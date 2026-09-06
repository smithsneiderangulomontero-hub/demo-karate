Feature: Gestión de usuarios

  Background:
    * url baseUrl

  Scenario: Obtener usuario existente
    Given path 'users', 1
    When method GET
    Then status 200
    And match response.name == 'Ana Garcia'
    And match response.email == 'ana.garcia@example.com'

  Scenario: Usuario no encontrado devuelve 404
    Given path 'users', 999
    When method GET
    Then status 404
    And match response.error == 'User not found'

  Scenario: Crear un nuevo usuario
    Given path 'users'
    And request { name: 'Carlos Ruiz', email: 'carlos.ruiz@example.com' }
    When method POST
    Then status 201
    And match response.id == 2
    And match response.name == 'Carlos Ruiz'

  Scenario: Actualizar un usuario existente
    Given path 'users', 1
    And request { name: 'Ana Garcia Actualizada', email: 'ana.garcia@example.com' }
    When method PUT
    Then status 200
    And match response.name == 'Ana Garcia Actualizada'

  Scenario: Eliminar un usuario
    Given path 'users', 1
    When method DELETE
    Then status 204

  # prueba de trigger automatico
