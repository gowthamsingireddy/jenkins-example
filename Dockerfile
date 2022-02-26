FROM alpine:3.14
COPY **/target/*.jar /demo.jar
CMD ["java" , "-jar" , "/demo.jar"]
