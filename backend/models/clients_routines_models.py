from backend.connection.connection_pool import MySQLPool

class ClientsRoutineModel:
    def __init__(self):
        self.mysql_pool = MySQLPool()

    def create_client_routine(self, routineid, clientid):
        params = {
            'clientID': clientid,
            'routineID': routineid,
        }
        query = """INSERT INTO Clients_Routines (RoutineID, ClientID) 
            values (%(routineid)s, %(clientid)s)"""
        cursor = self.mysql_pool.execute(query, params, commit=True)

        data = {'ID': cursor.lastrowid, 'ClientID': clientid, 'RoutineID': routineid}
        return data

    def get_client_routine(self):
        rv = self.mysql_pool.execute("SELECT * FROM Clients_Routines")
        data = []
        content = {}
        for result in rv:
            content = {'ClientID': result[0], 'RoutineID': result[1]}
            data.append(content)
            content = {}
        return data

    def delete_client_routine(self, routineid, clientid):
        params = {
            'routineid': routineid,
            'clientid': clientid,
        }
        query = """DELETE FROM Clients_Routines WHERE RoutineID = %(routineid)s AND 
        ClientID = %(clientid)s"""
        self.mysql_pool.execute(query, params, commit=True)

        data = {'result': 'SUCCESSFULLY DELETED'}
        return data


if __name__ == "__main__":
    tm = ClientsRoutineModel()
    print(tm.get_client_routine())
