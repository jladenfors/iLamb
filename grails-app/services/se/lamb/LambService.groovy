package se.lamb

import groovy.sql.Sql

class LambService {

    def dataSource
    
    def getPosts(String userName) {
        Sql sql = new Sql(dataSource);
        sql.rows("select * from forum_post where username LIKE '" + userName + "'");
    }
}
