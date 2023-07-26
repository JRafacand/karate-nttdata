##1. Prerequisitos:
	- Sistema operativo Windows 10
	- Install IntelliJ IDEA 2023.1.4 (Community Edition)
  - Install Gradle-8.2.1 (debe estar en la variable de entorno)
	- Install Apache Maven 3.9.1 (debe estar en la variable de entorno) How to Install Maven -> (https://www.baeldung.com/install-maven-on-windows-linux-mac)
	- Install JDK JDK-11.0.2 (debe estar en la variable de entorno)
  - Install node Node.js (Veriosn actual recomendada 18.17.0)

##2. Comandos de instalación
	- npm install --global yarn (descarga todas las dependencias del POM)
  - Installa Karate option execute in cmd (https://github.com/karatelabs/karate#quickstart)
    You can replace the values of com.mycompany and myproject as per your needs.
      mvn archetype:generate -DarchetypeGroupId=com.intuit.karate -DarchetypeArtifactId=karate-archetype -DarchetypeVersion=1.4.0 -DgroupId=com.mycompany -DartifactId=myproject ()
    
  This will create a folder called myproject (or whatever you set the name to).

 ##3. Plugins
      GitToolBox  
      Karate
      Cucumber for Java
      Gerkins
      
#34. Instrucciones para ejecutar los test
- Luego de instalar y configurar el ambiente,
- Clonar repositorio git clone https://github.com/JRafacand/karate-nttdata.git,
- En cada caso de prueba se ha incertado los ejemplos que Karate tomara para su ejecuciion, indificados como
   Examples:
  | username | password |
  | RafaCalvad720 | YaeraHora |
      
- Karate nos indicara su ubicación en esta linea
  - HTML report: (paste into browser to view) | Karate version: 1.5.0-SNAPSHOT
    file:///D:/karate/karate-nttdata/target/karate-reports/karate-summary.html
 


