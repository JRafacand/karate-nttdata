Feature: Pruebas de Creacion de un usuario

Scenario Outline: Creacion de un usuario en sign up
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
  | RafaCalvad320 | YaeraHora |
  | RafaCalvad325 | NoesHora |
  | RafaCalvad324 | SiEsHora |
  | RafaCalvad326 | Aveces456 |
  | RafaCalvad327 | Aveces459 |
  | RafaCalvad328 | Aveces450 |
 
Scenario Outline: Creacion de un usuario existente en sign up
  Given url "https://api.demoblaze.com"
  Given path "/signup"
  And request {username: "<username>", password: "<password>"}
  When method post
  And def statusCode = responseStatus
  And match statusCode == 200
  And def responseJson = response
  And match responseJson ==  {"errorMessage":"This user already exist."} 
  And def customMessage = "El usuario ya existe "
  And if (responseJson.errorMessage == "This user already exist.") karate.log(customMessage)
  * if (statusCode== 500) karate.log("Servidor no Responde")
  Examples:
  | username | password |
  | RafaCalvad320 | YaeraHora |
  | RafaCalvad325 | NoesHora |
  | RafaCalvad324 | SiEsHora |
  | RafaCalvad326 | Aveces456 |
  | RafaCalvad327 | Aveces459 |
  | RafaCalvad328 | Aveces450 |

Scenario Outline: login successfull
  Given url "https://api.demoblaze.com"
  Given path '/login'
  And request {username: "<username>", password: "<password>"}
  When method post
  And def statusCode = responseStatus
  And match statusCode == 200
  And def responseJson = response
  And karate.log(responseJson)
  And if (responseJson = responseJson) karate.log("El usuario se logeo correctamente") 
  * if (statusCode== 500) karate.log("Servidor no Responde")
  Examples:
  | username | password |
  | RafaCalvad320 | YaeraHora |
  | RafaCalvad325 | NoesHora |
  | RafaCalvad324 | SiEsHora |
  | RafaCalvad326 | Aveces456 |
  | RafaCalvad327 | Aveces459 |
  | RafaCalvad328 | Aveces450 |

  
Scenario Outline: login wrong password
  Given url "https://api.demoblaze.com"
  Given path '/login'
  And request {username: "<username>", password: "<password>"}
  When method post
  And def statusCode = responseStatus
  And match statusCode == 200
  And def responseJson = response
  And match responseJson ==  {"errorMessage":"Wrong password."}
  And def customMessage = "Clave o usuario incorrecto"
  And if (responseJson.errorMessage == "Wrong password.") karate.log(customMessage)
  * if (statusCode== 500) karate.log("Servidor no Responde")
  Examples:
  | username | password |
  | RafaCalvad320 | YaeraHora4 |
  | RafaCalvad325 | NoesHora4 |
  | RafaCalvad324 | SiEsHora4 |
  | RafaCalvad326 | Aveces4564 |
  | RafaCalvad327 | Aveces4594|
  | RafaCalvad328 | Aveces4504 |