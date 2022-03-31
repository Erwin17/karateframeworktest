Feature: Sample API Tests

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/pdf'

  # Scenario Demo 1
  Scenario: Run a sample Api GET with background
    Given path '/users?page=2%27'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  # Scenario Demo 2
  Scenario: Run a sample Api GET full url
    Given url 'https://reqres.in/api/users?page=2%27'
    When method GET
    Then status 200