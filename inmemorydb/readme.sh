
-- Creates a blank in memory db using spring boot and accessiblle via the h2 console.

-- provide the below under resources / application.properties
-- AZ as the database name
-- DB_CLOSE_DELAY=-1;DB_CLOSE_ON_EXIT=FALSE so that data persists as long as the VM is alive.

spring.datasource.url=jdbc:h2:mem:AZ;DB_CLOSE_DELAY=-1;DB_CLOSE_ON_EXIT=FALSE
spring.datasource.driverClassName=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=sa
spring.jpa.database-platform=org.hibernate.dialect.H2Dialect

mvn clean
mvn package
mvn spring-boot:run


jdbc url : jdbc:h2:mem:AZ;DB_CLOSE_DELAY=-1;DB_CLOSE_ON_EXIT=FALSE
sa /sa as the default user

http://localhost:8080/console/

-- execute the below on the h2-console.
select * from employee;