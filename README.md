# University

## Spring boot + PostgreSQL [(live demo)](https://majajovanovic.herokuapp.com/swagger-ui.html)

For the purposes of the backend part of the application, a relational database that was created containing four tables.
Database schema is shown in the following picture.

![er](https://user-images.githubusercontent.com/33513994/65599987-693e5e80-df9f-11e9-8cc5-b5ed8d4c65e2.jpg)

On the basis of database schema the jpa classes were created. In addition to basic CRUD operations, 
several additional operations are also provided that can be tested by Swagger UI, which can be seen in the following picture.

### Swagger UI

![SwaggerUICRUD](https://user-images.githubusercontent.com/33513994/65601693-d4d5fb00-dfa2-11e9-8513-1a9a0015c566.png)

Also, two reports are provided, based on one can obtain a list of students in a particular department, while the other is a 
certificate of study for a particular student.

### Example of report for students for defined department

![StudentsPDF](https://user-images.githubusercontent.com/33513994/65603139-6c3c4d80-dfa5-11e9-9eec-f31bc434f223.png)
