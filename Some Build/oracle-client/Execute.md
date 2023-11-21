#### Build
docker  build . -t quay.io/hoanbc_it/tools:oracle-client
docker push quay.io/hoanbc_it/tools:oracle-client

#### Run test connection
java -jar /otp/jdbc-tester-1.1.jar username password jdbc:oracle:thin:@//ipaddress:port/servicename
