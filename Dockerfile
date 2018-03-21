FROM java:8

MAINTAINER James Rice "James.Rice@ttg-solutions.com"

# Clone spring boot sample.
RUN git clone https://github.com/spring-guides/gs-spring-boot.git

# Move into solved version.
WORKDIR gs-spring-boot/complete

# Create jar file
RUN ./gradlew build

# Expose container port 8080 for web access.
EXPOSE 8080

# Run our jar.
CMD java -jar build/libs/gs-spring-boot-0.1.0.jar