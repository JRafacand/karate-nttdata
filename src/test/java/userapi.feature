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
  | RafaCalvad720 | YaeraHora |
  | RafaCalvad721 | NoesHora |
  | RafaCalvad722 | SiEsHora |
  | RafaCalvad723 | Aveces456 |
  | RafaCalvad724 | Aveces459 |
  | RafaCalvad725 | Aveces450 |
 
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
  | RafaCalvad720 | YaeraHora |
  | RafaCalvad721 | NoesHora |
  | RafaCalvad722 | SiEsHora |
  | RafaCalvad723 | Aveces456 |
  | RafaCalvad724 | Aveces459 |
  | RafaCalvad725 | Aveces450 |

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
  | RafaCalvad720 | YaeraHora |
  | RafaCalvad721 | NoesHora |
  | RafaCalvad722 | SiEsHora |
  | RafaCalvad723 | Aveces456 |
  | RafaCalvad724 | Aveces459 |
  | RafaCalvad725 | Aveces450 |

  
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
  | RafaCalvad720 | YaeraHra |
  | RafaCalvad721 | NoesHoa |
  | RafaCalvad722 | SiEsHoa |
  | RafaCalvad723 | Aveces56 |
  | RafaCalvad724 | Aveces59 |
  | RafaCalvad725 | aveces50 ||