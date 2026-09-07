Feature:
Login helper

  Scenario: Obtener token de autenticacion
    Given url baseUrl
    And path 'auth', 'login'
    And request { username: 'admin', password: 'admin123' }
    When method POST
    Then status 200
    * def authToken = response.token
