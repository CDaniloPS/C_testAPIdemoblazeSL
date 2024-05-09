Feature: Create new user using post API
  Background:
    * url 'https://api.demoblaze.com/signup'
    * def random_string = read('../utils/jutils2.js')

    * def randomutils =  random_string()
    * print 'Random is: ', randomutils
    * def randomString =  Math.floor(Math.random() * 3)+1
    * print 'Random new is: ', randomString

    * def jsonRequest = read('../json/user_create.json')
    * jsonRequest.username = "testuser_" + randomutils
    * print 'data new user is: ', jsonRequest
    * def jsonResponse1 = read('../json/message_create_ok.json')
    * print 'created response is: ', jsonResponse1

  Scenario: Create new user in signup
    Given url 'https://api.demoblaze.com/signup'
    And request jsonRequest
    When method post
    Then status 200
    And match response contains jsonResponse1
