from backend.connection.connection_pool import MySQLPool

class RoutineModel:
    def __init__(self):
        self.mysql_pool = MySQLPool()

    def create_routine(self, title, description, start, end, time, clients):
        params = {
            'title': title,
            'description': description,
            'start': start,
            'end': end,
            'time': time,
            'clients': clients,
        }
        query = """INSERT INTO Routines (RoutineTitle, RoutineDescription, RoutineStart, RoutineEnd,RoutineTime, RoutineClients) 
            values (%(title)s, %(description)s, %(start)s, %(end)s, %(time)s, %(clients)s)"""
        cursor = self.mysql_pool.execute(query, params, commit=True)

        data = {'ID': cursor.lastrowid, 'Title': title, 'Description': description,
                'Starts at': start, 'Ends at': end, 'Time': time, 'Clients': clients}
        return data

    def get_routines(self):
        rv = self.mysql_pool.execute("SELECT * FROM Routines")
        data = []
        content = {}
        for result in rv:
            content = {'ID': result[0], 'Title': result[1], 'Description': result[2], 'Starts at': str(result[3]),
                       'Ends at': str(result[4]), 'Time': str(result[5]), 'Clients': result[6]}
            data.append(content)
            content = {}
        return data

    def get_routine(self, id):
        params = {'id': id}
        rv = self.mysql_pool.execute("SELECT * FROM Routines WHERE RoutineID = %(id)s", params)
        data = []
        content = {}
        for result in rv:
            content = {'ID': result[0], 'Title': result[1], 'Description': result[2], 'Starts at': str(result[3]),
                       'Ends at': str(result[4]), 'Time': str(result[5]), 'Clients': result[6]}
            data.append(content)
            content = {}
        return data

    def delete_routine(self, id):
        params = {'id': id}
        query = """DELETE FROM Routines WHERE RoutineID = %(id)s"""
        self.mysql_pool.execute(query, params, commit=True)

        data = {'result': 'SUCCESSFULLY DELETED'}
        return data


if __name__ == "__main__":
    tm = RoutineModel()
    print(tm.get_routines())
