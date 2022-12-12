import mysql.connector
from loguru import logger

# Globals
host = 'localhost'
username = 'malik'
password = 'malik_dev'
database = 'john_lewis'


class Database:
    def __init__(self):
        try:
            self.db_connect = mysql.connector.connect(
                host=host,
                user=username,
                password=password,
                database=database
            )
            self.db_cursor = self.db_connect.cursor()
            logger.success('Successfully Connected to MySQL DB')

        except Exception as error:
            logger.error('Error connecting to DB: ' + str(error))

    def create_table(self):
        try:
            self.db_cursor.execute('''CREATE TABLE `john_lewis`.`products` (
              `idProducts` INT NOT NULL AUTO_INCREMENT,
              `Title` VARCHAR(255) NULL,
              `Price` VARCHAR(255) NULL,
              `Rating` VARCHAR(255) NULL,
              `Total_Reviews` INT NULL,
              `Image_URL` VARCHAR(255) NULL,
              `URL` VARCHAR(255) NULL,
              PRIMARY KEY (`idProducts`));
            ''')

            self.db_cursor.execute('''CREATE TABLE `john_lewis`.`promotions` (
              `idPromotions` INT NOT NULL AUTO_INCREMENT,
              `Item_ID` VARCHAR(45) NULL,
              `Message` VARCHAR(255) NULL,
              PRIMARY KEY (`idPromotions`));
            ''')

            logger.success('Tables Created Successfully')

        except mysql.connector.errors.ProgrammingError as pe:
            logger.error('Error creating table: ' + str(pe))

    def insert_product(self, row):
        sql = "INSERT INTO products (Title, Price, Rating, Total_Reviews, Image_URL, URL) " \
              "VALUES (%s, %s, %s, %s, %s, %s)"
        self.db_cursor.execute(sql, row)
        self.db_connect.commit()

        return self.db_cursor.lastrowid

    def insert_promo_msg(self, row):
        sql = "INSERT INTO promotions (Message, Item_ID) " \
              "VALUES (%s, %s)"
        self.db_cursor.execute(sql, row)
        self.db_connect.commit()
