cd wordpress/

echo "--- Creating an image for wordpress"

echo "--- Generate Dockerfile "
echo $(pwd)
cat << EDL >> Dockerfile
FROM nginx:latest
COPY ../scripts/2-wp-install.sh /var/html/www/wp-install.sh
WORKDIR /var/html/www/
#RUN sh wp-install.sh
EXPOSE 80 443
EDL

echo "--- Building image "
docker build -t shrimp .
echo "--- Image built "
docker images | grep shrimp
# docker push shrimp