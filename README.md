<h1 align="center">Paginação JPA Criteria</h1>

</br></br>

## Conteúdos


* [Sobre](#sobre)
* [Pré-requisitos](#pre-requisitos)
* [Como usar](#como-usar)
* [Tecnologias](#tecnologias)


</br></br>

## Sobre 
<a id="sobre"></a>
<p align="left">Exemplo de paginação utilizando Spring Boot e JPA Criteria.</p>

</br></br>

>## <center>  🚧 Em construção...🚧  </center>


</br></br>


## Pré-requisitos <a id="pre-requisitos"></a>
> - Mysql 8
> - JDK 17
> - Postman v9.31.0


</br></br>

## Como Usar <a id="como-usar"></a>
> Primeiramente, edite o arquivo <code>***application.yml***</code> e informe as seguintes variáveis de ambiente:
> - ${DATASOURCE_URL}=<code><***sua url do banco***></code>.
> - ${DATASOURCE_USERNAME}=<code><***seu usuário do banco***></code>.
> - ${DATASOURCE_PASSWORD}=<code><***sua senhado banco***></code>.

> Abra o projeto no Intellij (ou na sua IDE preferia), e execute-o utilizando o Maven.  
> Para testar os endpoints no  <code>***Postman***</code>, abra-o  e importe o arquivo  <code>***postman_collection.json***</code> que se encontra na raiz do projeto.
> A API está documentada com o <code>***Swagger***</code>, é só entrar no seu navegador e digitar  <code>***http://localhost:port/api/v1/swagger-ui.html***</code>.


</br></br>

## Tecnologias  <a id="tecnologias"></a>

![Java](https://img.shields.io/static/v1?label=Java&message=17&color=green)
![Spring Boot](https://img.shields.io/static/v1?label=spring-boot&message=2.7.4&color=green)
![MySql](https://img.shields.io/static/v1?label=mysql&message=8&color=green)
![Swagger](https://img.shields.io/static/v1?label=swagger&message=1.6.3&color=green)
![Lombok](https://img.shields.io/static/v1?label=lombok&message=1.18.4&color=green)
![ModelMapper](https://img.shields.io/static/v1?label=model-mapper&message=3.1.0&color=green)
![Commons](https://img.shields.io/static/v1?label=commons-lang3&message=3.12.0&color=green)
![Flyway](https://img.shields.io/static/v1?label=flywaydb&message=7.7.3&color=green)