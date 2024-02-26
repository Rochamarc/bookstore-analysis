import mysql.connector


class MainController:
    def database_config() -> dict:
        """
        """

        return { 
            "user": "root", 
            "host": "localhost",
            "port": 3306, 
            "password": "yugiohgx", 
            "database": "BOOKSTORE" 
        }
    
    @classmethod
    def select_authors(cls) -> list:
        """
        """
        conn = mysql.connector.connect(**cls.database_config())
        cursor = conn.cursor()

        cursor.execute("SELECT * FROM AUTHOR")

        data = cursor.fetchall()
        
        conn.close()

        return data

    @classmethod
    def select_publishers(cls) -> list:
        """
        """
        conn = mysql.connector.connect(**cls.database_config())
        cursor = conn.cursor()

        cursor.execute("SELECT * FROM PUBLISHER")

        data = cursor.fetchall()
        
        conn.close()

        return data    

if __name__ == "__main__":
    from pprint import pprint 

    pprint(MainController().select_authors())
    pprint(MainController().select_publishers())