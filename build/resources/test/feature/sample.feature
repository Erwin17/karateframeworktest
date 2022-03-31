Feature: Sample API Tests
  Scenario: Run a sample Api GET
    Given url 'https://reqres.in/api/users?page=2%27'
    When method GET
    Then status 200