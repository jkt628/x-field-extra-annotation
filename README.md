# x-field-extra-annotation

demonstrate a bug in openapi-generator: `x-field-extra-annotation` is not performed in spring server generator.

## setup

* start a MySQL server
* set up database

  ```bash
  mysql <src/main/resources/scripts/setup_event_router.sql
  ```
  
* test, this would normally create the table

  ```bash
  gradle test
  ```
  
* except for the error due to missing `@Id`

  ```bash
  find -name \*.html -exec grep 'No identifier' {} +
  ```
  
* double check

  ```bash
  find -name \*.java -exec grep '@.*Id' {} +
  ```
  
* but the Table declaration by [x-class-extra-annotation](file://eventRouter.yaml#L52) is honored

  ```bash
  find -name \*.java -exec grep '@.*Table' {} +
  ```
