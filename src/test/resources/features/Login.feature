Feature: El usuario se loguea y desloguea exitosamente

  @Demo
  @Login
  Scenario Outline: El usuario se loguea correctamente
    Given La aplicacion se abre correctamente
    When El usuario ingresa su <mail>
    And El usuario ingresa su <password>
    And El usuario clickea en el boton Login
    Then El menu de la aplicacion se muestra

    Examples:
      | mail                          | password   |
      | hernanandreszaracho@gmail.com | 1705962013 |

  @Login
  Scenario Outline: El usuario se desloguea correctamente
    When El usuario ingresa su <mail>
    And El usuario ingresa su <password>
    And El usuario clickea en el boton Login
    And El usuario clickea en el boton del Menu
    And El usuario clickea en el boton Logout
    And El usuario clickea en el boton de confirmacion de Logout
    Then El usuario se desloguea

    Examples:
      | mail                          | password   |
      | hernanandreszaracho@gmail.com | 1705962013 |