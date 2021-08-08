from backend.connection.connection_pool import MySQLPool

class ClientsModel:
    def __init__(self):
        self.mysql_pool = MySQLPool()

    def create_client(self, name, email, routines):
        params = {
            'name': name,
            'email': email,
            'routines': routines,
        }
        query = """INSERT INTO Clients (ClientName, ClientEmail, ClientRoutines) 
            VALUES (%(name)s, %(email)s, %(routines)s)"""
        cursor = self.mysql_pool.execute(query, params, commit=True)

        data = {'ID': cursor.lastrowid, 'Name': name,
                'Email': email, 'Routines': routines}
        return data

    def get_clients(self):
        rv = self.mysql_pool.execute("SELECT * FROM Clients")
        data = []
        content = {}
        for result in rv:
            content = {'ID': result[0], 'Name': result[1], 'Email': result[2]}
            data.append(content)
            content = {}
        return data

    def delete_client(self, id):
        params = {'id': id}
        query = """DELETE FROM Clients WHERE ClientID = %(id)s"""
        self.mysql_pool.execute(query, params, commit=True)

        data = {'result': 'SUCCESSFULLY DELETED'}
        return data


if __name__ == "__main__":
    tm = ClientsModel()
    print(tm.get_clients())
