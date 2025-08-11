Feature: Petstore API User CRUD

  Background:
    * url 'https://petstore.swagger.io/'
    # def uniqueId = java.util.UUID.randomUUID()
    #def userName = 'user' + uniqueId
    * def baseUser =
      """
      {
        "id": 11,
        "username": "jecp",
        "firstName": "julian",
        "lastName": "lopez",
        "email": "kasper@test.com",
        "password": "passw",
        "phone": "9876543245",
        "userStatus": 11
      }
      """
    * def userName = baseUser.username

  Scenario: Create,read, update, and delete a user
    Given path 'v2/user/'
    And request baseUser
    When method post
    Then status 200
    And print 'usuario creado:', userName

  #Scenario: Get user by username
    Given path 'v2/user/', userName
    When method get
    Then status 200
    And print 'usuario obtenido (GET):', response

  #Scenario: Update user and  verify from server
    * def updatedUser = baseUser
    * set updatedUser.firstName = 'David'
    * set updatedUser.email = 'Pendragon@test.com'
    Given path 'v2/user/', userName
    And request updatedUser
    When method put
    Then status 200
    And print 'usuario actualizado (PUT):', response

    Given path 'v2/user/', userName
    When method get
    Then status 200
    And print 'usuario obtenido desde servidor:', response
    And match response.firstName == 'David'
    And match response.email == 'Pendragon@test.com'

  #Scenario: Delete user
    Given path 'v2/user/', userName
    When method delete
    Then status 200
    And print 'usuario eliminado:', response
