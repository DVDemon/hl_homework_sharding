"""Generates Example Db"""
from random import randint
from faker import Faker
import pymysql.cursors

# Initialize faker
fake = Faker()

# Connect to the database
connection = pymysql.connect(host='127.0.0.1',
                             port=6033,
                             user='test',
                             password='pzjqUkMnc7vfNHET',
                             db='test',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)


class DbGenerator:
    def generate(self, n=1000):
        try:
            self.test()
            print(self.generate_customers(n))
            return 'All tables generated!'
        finally:
            connection.close()

    @staticmethod
    def test():
        print("Connection: OK\n")
        print("Found Tables:")
        with connection.cursor() as cursor:
            cursor.execute("""
                SHOW TABLES
                """)

        for (databases) in cursor.fetchall():
            print(databases)

    @staticmethod
    def generate_customers(n):
        with connection.cursor() as cursor:
            for i in range(n):
                country = fake.country()
                name = fake.name()
                city = fake.city()

                sql = "INSERT INTO customers (country, name, city) VALUES (%s, %s, %s)"
                cursor.execute(sql, (country, name, city))
                print(i)
                connection.commit()

        return 'generated {}({})'.format('customers', n)
