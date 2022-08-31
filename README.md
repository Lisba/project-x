# project-x

# Introducción - Capacitación Swift

Este proyecto es parte de una capacitación que se lleva a cabo dentro de Nubi. La misma estará compuesta por el dictado de varias charlas explicativas, y el desarrollo de una **consola de videojuegos**

La siguiente capacitación tiene como objetivo Adquirir habilidad de código en Swift nativo para poder desarrollar soluciones o implementaciones con módulos nativos en React Native para iOS, así como mantenimiento de los mismos.

### Charlas dictadas

- Unit testing
- Computed & Lazy properties
- Subíndices
- Protocolos
- Manejo de estados en swiftUi
- Arquitectura MVVM
- Sobrecarga de operadores
- Optional binding & force unwrapping
- Debug utilizando la cli de lldb
- Generics
- Enums
- Closures
- Difencias entre class y struct

---

En este proyecto pusimos en práctica las tecnologías y conceptos aprendidos, desarrollando las siguientes features:

## Features

Juego Ta-Te-Ti:
Desarrollamos un juego de ta-te-ti en el cual se puede elegir la modalidad de juego (2 jugadores, 1 jugador vs IA)

Juego de Memoria:
Este juego presenta un menú en el cual el usuario puede elegir entre ciertas configuraciones:
Modo de juego:
Secuencial: Un único jugador debe levantar las cartas en el orden especificado hasta encontrarlas todas o agotar sus vidas.
Clásico 1 jugador: Un único jugador debe levantar cartas de a pares, hasta encontrar todas las parejas o hasta agotarse la cantidad de vidas. Se guarda un highscore.
Clásico 2 jugadores: Similar al de 1 jugador, con la diferencia de que al equivocarse, el jugador no pierde una vida, sino que el turno pasa a su contrincante. En este modo también se agrega la dificultad de un turno con duración limitada (se configura en el menú). El juego termina cuando se hayan dado vuelta todas las parejas.
Tiempo de visualización de ayuda, si aplica según modo de juego. En todos los modos, al comienzo se muestran todas las cartas por una cantidad de tiempo elegida por el usuario.
Cantidad de cartas. Las opciones varían según el modo de juego elegido.
Cantidad de vidas, si aplica según modo de juego.
Input para ingresar los nombres de ambos jugadores, si aplica según modo de juego.

Se pusieron en práctica todos estos conceptos aprendidos:

- Tipado
  - Optionals
  - Enumerados
- Control de flujo
  - Guard
- Estructura de datos
  - Tuplas
  - Diccionarios
  - Arrays
- Orientación a objetos
  - Protocolos
  - Inicializadores
  - Clases
  - Estructuras
  - Herencia
  - Lazy / Computed properties
  - Métodos mutating
- Llamado a una API
- Manejo de estados con SwiftUI
  - Bindings
  - Observable Object / Environment Object
  - State
  - Patrón utilizando clases Observable Object anidadas
- Estructura de proyecto MVVM
  - Estructura de carpetas
- Dominio del IDE XCode
  - Instalación de dependencias con CocoaPods
  - Familiarización con errores de Swift y del IDE
- Estilos
  - Grid
  - Modificadores de vistas personalizados
  - Animaciones vectoriales
  - Dibujar con SwiftUI
- Asincronismo, concurrencia
  - DispatchQueue
  - Tasks
- Funciones
  - Sobrecarga de operadores
  - In-out parameters
  - Closure
    - Trailing
    - Escaping
- Manejo de excepciones
- Manejo de datos con Swift
  - Manejo de strings
  - Rangos
  - Subíndices
- Tests unitarios
- Implementar lógicas de jugabilidad
- Persistencia de datos (UserDefaults)
- Formularios y validación de inputs
- Manejo de assets

Resultados
Se logró desarrollar un módulo nativo para iOS en la app Nubiz, que permite detectar cuando se inicia una grabación de pantalla. https://tunubi.atlassian.net/browse/B2B-365
