echo ${SECURE_KEY} >> env.json
sed 's/*/"/g' env.json >> ./src/resources/Key/testKey.json
java -Dserver.port=$PORT $JAVA_OPTS -Dspring.profiles.active=prod -jar ./build/libs/dive-log-0.0.1-SNAPSHOT.jar
