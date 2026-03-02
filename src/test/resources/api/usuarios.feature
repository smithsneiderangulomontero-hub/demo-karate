Feature: Pruebas de API de usuarios

  Scenario: Obtener usuario exitosamente
    Given url 'https://jsonplaceholder.typicode.com'
    And path 'users', 1
    When method get
    Then status 200
    And match response.name == 'Leanne Graham'