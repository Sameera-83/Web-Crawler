# Java-Web-Crawler
Web Crawler for Crawling any of the site using Form UI.

This project will give you the result in the same page  after crawling the site as shown below.

![crawl-form](https://github.com/Sameera-83/Contents/blob/main/GenarateCrawler.PNG)


# System Requirments for  the Project
Created this project using the Eclipse IDE.Java 1.8 and maven 3

# Build and Runing the Project
Download project using   <a href="git clone https://github.com/Sameera-83/Web-crawler.git" >git clone https://github.com/Sameera-83/Web-crawler.git</a>
This is a Maven Project so to build the project we require maven installed on the system/IDE and then using command mvn clean install will build the application. Otherwise you can directly run
mvn clean package && java -jar target/spring-boot-web-crawler-1.0.jar

## Build Result
D:\workspaceassignment\Web-Crawler>mvn clean package && java -jar target/spring-boot-web-crawler-1.0.jar
[INFO] Scanning for projects...
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building Spring Boot Web CRAWLER 1.0
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-clean-plugin:2.6.1:clean (default-clean) @ spring-boot-web-crawler ---
[INFO] Deleting D:\workspaceassignment\Web-Crawler\target
[INFO]
[INFO] --- spring-boot-maven-plugin:2.7.1:build-info (default) @ spring-boot-web-crawler ---
[INFO]
[INFO] --- maven-resources-plugin:2.6:resources (default-resources) @ spring-boot-web-crawler ---
[INFO] Using 'UTF-8' encoding to copy filtered resources.
[INFO] Copying 1 resource
[INFO] Copying 2 resources
[INFO]
[INFO] --- maven-compiler-plugin:3.1:compile (default-compile) @ spring-boot-web-crawler ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 4 source files to D:\workspaceassignment\Web-Crawler\target\classes
[INFO]
[INFO] --- maven-resources-plugin:2.6:testResources (default-testResources) @ spring-boot-web-crawler ---
[INFO] Using 'UTF-8' encoding to copy filtered resources.
[INFO] skip non existing resourceDirectory D:\workspaceassignment\Web-Crawler\src\test\resources
[INFO]
[INFO] --- maven-compiler-plugin:3.1:testCompile (default-testCompile) @ spring-boot-web-crawler ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 1 source file to D:\workspaceassignment\Web-Crawler\target\test-classes
[WARNING] /D:/workspaceassignment/Web-Crawler/src/test/java/WelcomeControllerTest.java: D:\workspaceassignment\Web-Crawler\src\test\java\WelcomeControllerTest.java uses or overrides a deprecated API.
[WARNING] /D:/workspaceassignment/Web-Crawler/src/test/java/WelcomeControllerTest.java: Recompile with -Xlint:deprecation for details.
[INFO]
[INFO] --- maven-surefire-plugin:2.18.1:test (default-test) @ spring-boot-web-crawler ---
[INFO]    Surefire report directory: D:\workspaceassignment\Web-Crawler\target\surefire-reports

Initial page
![image](https://github.com/Sameera-83/Contents/blob/main/InitailPage.PNG)

Once you submit the form it will generates resource information into your page.
![image](https://github.com/Sameera-83/Contents/blob/main/GenarateCrawler.PNG)

#Download Search results .
![image](https://github.com/Sameera-83/Contents/blob/main/SearchPage.PNG)

# Junit Test cases
Junit test cases are created in the test folder and its available inside the project and i have covered 3 junit test cases and results are as shown below.
![image](https://github.com/Sameera-83/Contents/blob/main/TestResults.PNG)

# Thanks for viewing my Page.
Sameera
