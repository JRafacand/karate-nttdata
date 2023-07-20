Feature: Pruebas de Creacion de un usuario

Scenario Outline: Creacion de un usuario existente en sign up
  Given url "https://api.demoblaze.com"
  Given path "/signup"
  And request {username: "<username>", password: "<password>"}
  When method post
  And def statusCode = responseStatus
  And match statusCode == 200
  Then if (statusCode == 200) karate.log("El usuario se creo correctamente")
       * if (statusCode== 500) karate.log("Servidor no Responde")
      
  Examples:
  | username | password |
  | RafaCalvad299 | YaeraHora |
 
Scenario Outline: Creacion de un usuario existente en sign up
  Given url "https://api.demoblaze.com"
  Given path "/signup"
  And request {username: "<username>", password: "<password>"}
  When method post
  And def statusCode = responseStatus
  And match statusCode == 200
  And def responseJson = response
  And match responseJson ==  {"errorMessage":"This user already exist."} 
  And def customMessage = "Vuelva a intentarlo"
  And if (responseJson.errorMessage == "This user already exist.") karate.log(customMessage)
  * if (statusCode== 500) karate.log("Servidor no Responde")
  Examples:
  | username | password |
  | RafaCalvad299 | YaeraHora |
 