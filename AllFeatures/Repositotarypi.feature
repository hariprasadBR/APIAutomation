Feature: Test End to End GitHub Repository

  Scenario: Create new Repository using POST Request
    Given get RequestSpecification object
    And set the OAuth2 access token
    And set the request header
    And user add request payload from json file by passing "createRepository" json Node name
    When user select http "POST" request
    Then user capture repository name
    And user validate status code as 201 and status line as "201 Created"
    And user validate response time below 5000 ms
    And user validate response headers
    And user validate repository name and description
    And user validate response json schema
    And user generate response log

  Scenario: Retrieve Repository using GET Request
    Given get RequestSpecification object
    And set the OAuth2 access token
    When user select http "GET" request
    And user validate status code as 200 and status line as "200 OK"
    And user validate response time below 5000 ms
    And user validate response headers
    And user validate repository name and description
    And user validate response json schema
    And user generate response log

  Scenario: Update Repository using PATCH Request
    Given get RequestSpecification object
    And set the OAuth2 access token
    And set the request header
    And user add request payload from json file by passing "updateRepository" json Node name
    When user select http "PATCH" request
    Then user capture repository name
    And user validate status code as 200 and status line as "200 OK"
    And user validate response time below 5000 ms
    And user validate response headers
    And user validate repository name and description
    And user validate response json schema
    And user generate response log

  Scenario: Retrieve Repository using GET Request
    Given get RequestSpecification object
    And set the OAuth2 access token
    When user select http "GET" request
    And user validate status code as 200 and status line as "200 OK"
    And user validate response time below 5000 ms
    And user validate response headers
    And user validate repository name and description
    And user validate response json schema
    And user generate response log

  Scenario: delete Repository using DELETE Request
    Given get RequestSpecification object
    And set the OAuth2 access token
    When user select http "DELETE" request
    And user validate status code as 204 and status line as "204 No Content"
    And user validate response time below 5000 ms

  Scenario: Retrieve Repository using GET Request
    Given get RequestSpecification object
    And set the OAuth2 access token
    When user select http "GET" request
    And user validate status code as 404 and status line as "404 Not Found"
    And user validate response time below 5000 ms
