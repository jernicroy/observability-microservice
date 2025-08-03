# Getting Started
* `set JAVA_HOME=D:\Software\Java\jdk-17.0.10`
* `set PATH=%JAVA_HOME%\bin;%PATH%`

### 1. Prometheus exporter Setup
* Run Observability-microservice application as prometheus exporter using `java -jar prometheus-exporter-0.0.1-SNAPSHOT.jar`
* The Spring boot application started at 9900 port.
* Expose the port over the inbound rules within the server/computer
* We are done with exporter and verify in `curl http://localhost:9900/actuator/prometheus` context root.

### 2. Prometheus Collector Setup
* Run the `docker run -d --name prometheus -p 9090:9090 -v %cd%\prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus` inside the docker folder.

### 3. Grafana Setup
* Run the `docker pull grafana/grafana-oss`
* Start the grafana by `docker run -d --name=grafana -p 3000:3000 -v grafana-storage:/var/lib/grafana grafana/grafana-oss`

### Reference Documentation
For further reference, please consider the following sections:

* [Official Gradle documentation](https://docs.gradle.org)
* [Spring Boot Gradle Plugin Reference Guide](https://docs.spring.io/spring-boot/3.5.4/gradle-plugin)
* [Create an OCI image](https://docs.spring.io/spring-boot/3.5.4/gradle-plugin/packaging-oci-image.html)
* [Prometheus](https://docs.spring.io/spring-boot/3.5.4/reference/actuator/metrics.html#actuator.metrics.export.prometheus)
* [Spring Boot Actuator](https://docs.spring.io/spring-boot/3.5.4/reference/actuator/index.html)

### Guides
The following guides illustrate how to use some features concretely:

* [Building a RESTful Web Service with Spring Boot Actuator](https://spring.io/guides/gs/actuator-service/)

### Additional Links
These additional references should also help you:

* [Gradle Build Scans – insights for your project's build](https://scans.gradle.com#gradle)

