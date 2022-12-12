from loguru import logger
from ETL import JohnLewis
from Database import Database

if __name__ == '__main__':
    logger.info('Bot Started')

    # Initialize MySQL Database
    db = Database()
    db.create_table()

    # Creating a John Lewis instance
    john_lewis = JohnLewis()

    # Extracting Data
    john_lewis.extract()

    # Transforming Data
    john_lewis.transform()

    # Loading Data into DB
    john_lewis.load(db)
