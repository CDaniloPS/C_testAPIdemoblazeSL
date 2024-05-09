Feature: API demoblaze with karate test
  Background:
    * url 'https://api.demoblaze.com/signup'
    * def jsonResponse2 = read('../json/message_error_exist.json')
    * def jsonResponse3 = read('../json/message_auth_token.json')
    * def jsonResponse4 = read('../json/message_error_user.json')
    * def jsonResponse5 = read('../json/message_error_password.json')

  Scenario: Try create a user exist
    * def jsonRequest = read('../json/user_exist.json')
            * print 'message user exist: ', jsonResponse2

    Given url 'https://api.demoblaze.com/signup'
    And request jsonRequest
    When method post
    Then status 200
    And match response contains jsonResponse2
  
  Scenario: User and Password correct for login
    * def jsonRequest = read('../json/credentials.json')
            * print 'login response is: ', jsonResponse3

    Given url 'https://api.demoblaze.com/login'
    And request jsonRequest
    When method post
    Then status 200
    And match response contains jsonResponse3
    
  Scenario: Incorrect login by user
    * def jsonRequest = read('../json/user_incorrect_u.json')
            * print 'login incorrect user response is: ', jsonResponse4

    Given url 'https://api.demoblaze.com/login'
    And request jsonRequest
    When method post
    Then status 200
    And match response contains jsonResponse4

  Scenario: Incorrect login by password
    * def jsonRequest = read('../json/user_incorrect_p.json')
            * print 'login incorrect pass response is: ', jsonResponse5

    Given url 'https://api.demoblaze.com/login'
    And request jsonRequest
    When method post
    Then status 200
    And match response contains jsonResponse5