FROM oracle/graalvm-ce:1.0.0-rc16 as graalvm
COPY . /home/app/jx-micronaut
WORKDIR /home/app/jx-micronaut
RUN native-image --no-server -cp build/libs/jx-micronaut-*.jar

FROM frolvlad/alpine-glibc
EXPOSE 8080
COPY --from=graalvm /home/app/jx-micronaut .
ENTRYPOINT ["./jx-micronaut"]
