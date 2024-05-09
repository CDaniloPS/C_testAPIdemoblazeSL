# Project API demoblaze
> Ejercicio de automatizacion de APIS.


## Table of Contents
* [Technologies Used](#Prerequisitos)
* [Implementation](#Implementacion)
* [Flow](#flujo)
* [Instructions to run the test](#Instructions)
* [Project Status](#project-status)

## Technologies Used
	- Maquina local con el sistema operativo Windows 11
	- IDE: IntelliJ IDEA
	- JDK versión 17 (archivo jdk-17_windows-x64_bin)


## Implementation
      - Descargar e Instalar JDK versión 17
	- Descargar e instalar de la pagina https://www.jetbrains.com/ la version Intellij IDEA 2023.1.4 (Community Edition)
	- Descargar el zip del proyecto C_testAPIdemoblazeSL del repositorio de git.
	- Descomprimir el proyecto con el nombre C_testAPIdemoblazeSL en el workspace.
	- En Intellij ir a File/new/project from existing sources y seleccionar el proyecto C_testAPIdemoblazeSL. 


## Flow
	Prueba de la API con los siguientes servicios:
	Signup: https://api.demoblaze.com/signup 
	Login: https://api.demoblaze.com/login 
	creando escenarios para los siguientes casos:
      - Crear un nuevo usuario en signup.
      - Intentar crear un usuario ya existente.
      - Usuario y password correcto en login.
      - Usuario y password incorrecto en login.


## Instructions to run the test
      - Op1. Seleccionar el proyecto C_testAPIdemoblazeSL y dar click en el menu en la opción Run para seleccionar Run BlazeUserRunner Shift+F10.
      - Op2. Dentro del proyecto C_testAPIdemoblazeSL ir a src/test/java/usercases y seleccione el archivo BlazeUserRunner.java, dar click derecho para seleccionar Run BlazeUserRunner y ejecutar.


## Project Status
Project is:  _complete_
