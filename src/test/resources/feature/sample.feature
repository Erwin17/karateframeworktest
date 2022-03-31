Feature: Sample API Tests

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  # Scenario Demo 1
  Scenario: Run a sample Api GET with background
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  # Scenario Demo 2
  Scenario: Run a example Api GET full url
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200

  # Scenario Demo 3
  Scenario: Run a example with Path, Params
    Given path '/users'
    And param page = 500
    When method GET
    Then status 200
    And print response

   #Scenario Demo 4
  Scenario: Run a example with assertion
    Given path 'users'
    And param page = 2
    When method GET
    Then status 200
    And match response.data[0]first_name != null
    And assert response.data.length == 6
    And match $.data[1].id == 8
    And match $.data[3].last_name == 'Fields'
