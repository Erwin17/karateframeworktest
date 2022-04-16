Feature: Post API Demo

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read('data/response1.json')

  Scenario: Post Demo 1
    Given path '/users'
    And request {"name": "Erwin", "job": "Developer"}
    When method POST
    Then status 201
    And print response

    Scenario: Post Demo 2
      Given path '/users'
      And request {"name": "Erwin", "job": "Developer"}
      When method POST
      Then status 201
      And match response == {"name": "Erwin", "job": "Developer", "id": "#string", "createdAt": "#ignore", "age": "#ignore"}
      And print response

    Scenario: Post Demo 3
      Given path '/users'
      And request {"name": "Erwin", "job": "Developer"}
      When method POST
      Then status 201
      And match response == expectedOutput
      And match $ == expectedOutput
      And print response

    Scenario: Post Demo 4
      Given path '/users'
      And def requestBody = read('data/userdata.json')
      And request requestBody
      When method POST
      Then status 201
      And match response == expectedOutput
      And match $ == expectedOutput
      And print response

    Scenario: Demo 5
      Given path '/users'
      And def projectPath = karate.properties['user.dir']
      And print projectPath
      And def filePath = projectPath+'/src/test/java/data/userdata2.json'
      And def requestBody = read(filePath)
      And request requestBody
      When method POST
      Then status 201
      And match response == expectedOutput

    Scenario: Post Demo 6
      Given path '/users'
      And def requestBody = read('data/userdata.json')
      And request requestBody
      And set requestBody.job = 'engineer'
      When method POST
      Then status 201
      And print response
      And match response == { "createdAt": "#ignore","name": "Erwin","id": "#string", "job": "engineer"}
