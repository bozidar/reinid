dataSource {
    // Open separate connections to database for every request or pool connections.
    pooled = true
}
hibernate {
    cache.use_second_level_cache=true
    cache.use_query_cache=true
    cache.provider_class='net.sf.ehcache.hibernate.EhCacheProvider'
}
 
// dbCreate options.
// create-drop: Drop and re-create the database tables on restart. Deletes existing data.
// create:       Create the database if it doesn't exist, but don't modify it if it does. Deletes existing data.
// update:     Create the database if it doesn't exist, and modify it if it does exist. Keep data.
// If nothing specified then do nothing to database schema.
 
// Environment specific settings.
environments {
    development {
        dataSource {
            /** HSQLDB - In memory */
            driverClassName = "org.hsqldb.jdbcDriver"
            username = "sa"
            password = ""
            dbCreate = "update"
            url = "jdbc:hsqldb:mem:devDB"
            /** MySQL */
//             driverClassName = "com.mysql.jdbc.Driver"
//             username = "gnumimsadmin"
//             password = "gnumimsadmin"
//             dbCreate = "create-drop"
//             url = "jdbc:mysql://host:3306/gnumims_dev?autoReconnect=true&sessionVariables=storage_engine=InnoDB"
        }
    }
    test {
        dataSource {
            /** HSQLDB - In memory */
            driverClassName = "org.hsqldb.jdbcDriver"
            username = "sa"
            password = ""
            dbCreate = "update"
            url = "jdbc:hsqldb:mem:devDb"
            /** MySQL */
//             driverClassName = "com.mysql.jdbc.Driver"
//             username = "gnumimsadmin"
//             password = "gnumimsadmin"
//             dbCreate = "update"
//             url = "jdbc:mysql://host:3306/gnumims_test?autoReconnect=true&sessionVariables=storage_engine=InnoDB"
        }
    }
    production {
        dataSource {
            /* Delete dbCreate line after setup! */
            /** HSQLDB - In memory */
//             driverClassName = "org.hsqldb.jdbcDriver"
//             username = "sa"
//             password = ""
//             dbCreate = "create-drop"
//             url = "jdbc:hsqldb:mem:devDB"
            /** HSQLDB - In file */
//             driverClassName = "org.hsqldb.jdbcDriver"
//             username = "sa"
//             password = ""
//             dbCreate = "update"
//             url = "jdbc:hsqldb:file:prodDb;shutdown=true"
            /** MSSQL */
            //For more info see the docs that you downloaded with the driver.
//             driverClassName = "com.microsoft.sqlserver.jdbc.SQLServerDriver"
//             username = "gnumimsadmin"
//             password = "gnumimsadmin"
//             dbCreate = "update"
//             url = "jdbc:sqlserver://gnumimssql01:1433;databaseName=gnumims_prod"
            /** MySQL */
            driverClassName = "com.mysql.jdbc.Driver"
            username = "gnumimsadmin"
            password = "gnumimsadmin"
            dbCreate = "update"
            url = "jdbc:mysql://gnumimssql01:3306/gnumims_prod?autoReconnect=true&sessionVariables=storage_engine=InnoDB"
        }
 
    }
}