
# Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
# Click nbfs://nbhost/SystemFileSystem/Templates/Other/Dockerfile to edit this template

FROM maven:3.8.5-openjdk-17 as build
COPY . .
RUN mvn clean package -DskipTests

from openjdk:17.0.1-jdk-slim
copy --from=build / targe/Tienda-l.jar Tienda.jar
expose 80
entrypoint ["java","-jar","Tienda.jar"]


