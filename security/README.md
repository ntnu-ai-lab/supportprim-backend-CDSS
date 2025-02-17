# SupportPrim Security
### -- based on Spring Security and JWT

![](https://img.shields.io/badge/build-success-brightgreen.svg) 
<!-- ![](https://img.shields.io/badge/build-success-inactive.svg) -->

# Stack

![](https://img.shields.io/badge/Java_8-✓-blue.svg)
![](https://img.shields.io/badge/Spring_Boot-✓-blue.svg)
![](https://img.shields.io/badge/Spring_Security-✓-blue.svg)
![](https://img.shields.io/badge/Spring_Boot_Data-✓-blue.svg)
![](https://img.shields.io/badge/Spring_Boot_Data_Elasticsearch-✓-blue.svg)
![](https://img.shields.io/badge/Elasticsearch-✓-blue.svg)
![](https://img.shields.io/badge/JWT-✓-blue.svg)
![](https://img.shields.io/badge/Swagger_2-✓-blue.svg)

# File structure

``` 
supportprim-security/
│
├── src/main/java/
│   │
│   ├── resources
│   │   ├── application.properties
│   │   ├── logback-spring-ref.xml
│   │   ├── logback-spring.xml
│   │   └── security.properties
│   │
│   └── no.ntnu.supportprim.security
│       ├── SupportPrimSecurityApp.java
│       │
│       ├── common
│       │   ├── ApiResponseAnnotations.java
│       │   ├── Constants.java
│       │   ├── ElasticConstants.java
│       │   ├── HttpResponseCodes.java
│       │   ├── SecurityConstants.java
│       │   └── ValidationConstants.java
│       │
│       ├── config
│       │   ├── ElasticConfig.java
│       │   └── SwaggerConfig.java
│       │
│       ├── controller
│       │   ├── LoginController.java
│       │   └── exception
│       │       ├── CustomException.java
│       │       └── GlobalExceptionHandlerController.java
│       │
│       ├── model
│       │   ├── Role.java
│       │   ├── User.java
│       │   ├── data
│       │   │   ├── UserResponseData.java
│       │   │   └── UserSignupData.java
│       │   └── validation
│       │       ├── PasswordConstraintValidator.java
│       │       └── ValidPassword.java
│       │
│       ├── repository
│       │   └── UserRepository.java
│       │
│       ├── security
│       │   ├── JwtTokenFilter.java
│       │   ├── JwtTokenFilterConfigurer.java
│       │   ├── JwtTokenProvider.java
│       │   ├── UserDetailsImpl.java
│       │   └── WebSecurityConfig.java
│       │
│       └── service
│           ├── UserService.java
│           ├── ValidationService.java
│           └── ValidationServiceImpl.java
│    
├── learning-resources
│   ├── JWT
│   ├── elasticsearch
│   ├── spring-boot
│   ├── spring-security
│   └── web-technologies
│
├── README.md
└── pom.xml
```
