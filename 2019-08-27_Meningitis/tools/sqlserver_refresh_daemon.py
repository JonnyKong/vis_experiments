# -*- coding: utf-8 -*-
"""
    DEPRECATED

    A daemon that refreshes the database consistently.

    @Author jonnykong@cs.ucla.edu
    @Date   2019-09-02
"""

import asyncio
import pymssql

SQLSERVER_PWD = '<your_pwd_here>'


class RefreshDaemon(object):
    def __init__(self):
        self.server = 'localhost'
        self.user = 'sa'
        self.password = SQLSERVER_PWD
        self.database = 'viz'
        self.conn = pymssql.connect(server=self.server,
                                    user=self.user,
                                    password=self.password,
                                    database=self.database,
                                    port='1401')

    def __del__(self):
        self.conn.close()

    def run_once(self):
        """
        Refresh table by inserting a row and deleting it.
        """
        print('run_once()')
        cursor = self.conn.cursor()
        cursor.execute("""
            INSERT INTO meningitis (measure_name, location_name, sex_name, age_name, cause_name,
                                    year_value, val)
            VALUES (
                '_test', '_test', '_test', '_test', '_test', '_test', 0
            )
        """)
        self.conn.commit()

        cursor = self.conn.cursor()
        cursor.execute("""
            DELETE FROM meningitis
            WHERE measure_name = '_test';
        """)
        self.conn.commit()

    async def run(self):
        while True:
            self.run_once()
            await asyncio.sleep(0.1)


if __name__ == '__main__':
    daemon = RefreshDaemon()
    asyncio.run(daemon.run())