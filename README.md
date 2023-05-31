# http_server

# LABORATORIUM
# Programowanie Full-Stack w Chmurze Obliczeniowej

# Sprawozdanie 1

# zadanie 1

<b>CZĘŚĆ OBOWIĄZKOWA:</b>

Podpunkt 3:</br>
a) docker build -t serverimage .</br>
Za pomocą tego polecenia budujemy obraz na podstawie pliku Dockerfile umiejscowionego w katalogu, w którym obecnie jesteśmy. Parametr -t odpowiada za nadanie nazwy obrazowi. W tym przypadku obraz nazywa się serverimage.</br>
![alt text](https://github.com/bwpollub/http_server/blob/master/2.PNG)</br></br>
b) docker run --name server_container -d -p 8080:8080 serverimage</br>
Za pomocą polecenia docker run uruchamiamy kontener na podstawie utworzonego wcześniej obrazu. Parametr --name pozwala nadać nazwę kontenerowi, -p pozwala na ustalenie portu, który ma zostać udostępniony dla kontenera, a parametr -d pozwala na uruchomienie kontenera w tak zwanym "detach mode".</br>
![alt text](https://github.com/bwpollub/http_server/blob/master/3.PNG)</br></br>
c) docker logs server_container</br>
To polecenie pozwala na przejrzenie logów, które wytworzyła aplikacja uruchomiona w kontenerze.</br>
![alt text](https://github.com/bwpollub/http_server/blob/master/4.PNG)</br></br>
d) docker history serverimage</br>
Za pomocą tego polecenia możemy sprawdzić ile warstw posiada zbudowany obraz.</br>
![alt text](https://github.com/bwpollub/http_server/blob/master/5.PNG)</br></br>

Zrzut ekranu prezentujący poprawne działanie:</br>
![alt text](https://github.com/bwpollub/http_server/blob/master/1.PNG)</br></br>


<b>CZĘŚĆ DODATKOWA:</b></br></br>

1) ![alt text](https://github.com/bwpollub/http_server/blob/master/dod_1_amd64.PNG)</br></br>
![alt text](https://github.com/bwpollub/http_server/blob/master/dod_1_arm64v8.PNG)</br></br>
![alt text](https://github.com/bwpollub/http_server/blob/master/dod_1_armv7.PNG)</br></br>
![alt text](https://github.com/bwpollub/http_server/blob/master/dod_1_docker_images.PNG)</br></br>
