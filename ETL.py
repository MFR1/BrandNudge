import re
import requests
from bs4 import BeautifulSoup
from loguru import logger

# Globals
main_url = 'https://www.johnlewis.com'
category_url = main_url + '/browse/electricals/coffee-machines/view-all-coffee-machines/_/N-afu'


class JohnLewis:
    def __init__(self):
        self.headers = {
            'User-Agent': 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, '
                          'like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36',
            "X-Requested-With": "XMLHttpRequest"
        }
        self.page_source = None
        self.response = None
        self.url = category_url
        self.products = list()

    def extract(self):
        logger.info('Extracting Data from: ' + category_url)

        try:
            self.response = requests.get(category_url, headers=self.headers)
            self.page_source = self.response.text
            logger.success('Data Extracted Successfully')

        except requests.exceptions.HTTPError as http_error:
            logger.error("Http Error: ", http_error)
        except requests.exceptions.ConnectionError as conn_error:
            logger.error("Error Connecting: ", conn_error)
        except requests.exceptions.Timeout as timeout_error:
            logger.error("Timeout Error: ", timeout_error)
        except requests.exceptions.RequestException as request_exception:
            logger.error("Something Else: ", request_exception)

    def transform(self):
        logger.info('Transforming Data')
        soup = BeautifulSoup(self.page_source, 'html.parser')

        # Iterating over each listing
        for item in soup.find_all('article', attrs={'data-test': 'product-card'}):
            item_title = item.find('div', attrs={'data-test': 'product-title'})
            item_price = item.find('p', attrs={'data-test': 'product-card-price'})
            item_rating = item.find('span', attrs={'data-test': 'rating'})
            item_total_reviews = item.find('div',
                                           attrs={'class': 'rating_suffix__PdYl6 rating_suffix-joyfully-bold__XnIse'})
            item_image = item.find('img', attrs={'data-test': 'product-card-image'})
            item_url = item.find('a', attrs={'class': 'product-card_c-product-card__link__QeVVQ'})
            item_promo_msgs = item.findAll('p', attrs={'data-test': 'product-card-promo-message'})

            # Extracting item rating and total reviews using Regex
            item_rating = re.search(r'\d+\.\d+', item_rating.text).group()
            item_total_reviews = re.search(r'\d+', item_total_reviews.text).group()

            logger.info('Item Title: ' + item_title.text)
            logger.info('Item Price: ' + item_price.text)
            logger.info('Item Rating: ' + item_rating)
            logger.info('Item Total Reviews: ' + item_total_reviews)
            logger.info('Item Image URL: ' + 'https:' + item_image['src'])
            logger.info('Item URL: ' + main_url + item_url['href'])

            final_promos = list()
            if len(item_promo_msgs) > 0:
                logger.info('Item Promo Messages: ')
                for promo_msg in item_promo_msgs:
                    logger.info(promo_msg.text)
                    final_promos.append(promo_msg.text)

            product = {
                'title': item_title.text,
                'price': item_price.text,
                'item_rating': item_rating,
                'item_total_reviews': item_total_reviews,
                'item_image': 'https:' + item_image['src'],
                'item_url': main_url + item_url['href'],
                'item_promo_msgs': final_promos
            }
            logger.info(product)

            self.products.append(product)

        logger.success('Data Transformed Successfully')

    def load(self, db):
        logger.info('Loading Data to the Database')

        for product in self.products:
            last_row_id = db.insert_product([product['title'], product['price'], product['item_rating'],
                                             product['item_total_reviews'], product['item_image'], product['item_url']])

            for promo_msg in product['item_promo_msgs']:
                db.insert_promo_msg([promo_msg, str(last_row_id)])

        logger.success('Data Successfully loaded into DB')
