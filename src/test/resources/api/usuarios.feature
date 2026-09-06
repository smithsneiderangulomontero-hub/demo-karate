   Feature: Gestión de usuarios

   Background:
     * url baseUrl

   Scenario: Obtener usuario existente
     Given path 'users', 1
     When method GET
     Then status 200
