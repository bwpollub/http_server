# http_server

# LABORATORIUM
# Programowanie Full-Stack w Chmurze Obliczeniowej

# Sprawozdanie 1

# zadanie 1

<b>CZĘŚĆ OBOWIĄZKOWA:</b>

Podpunkt 3:</br>
a) docker build -t serverimage .</br>
Za pomocą tego polecenia budujemy obraz na podstawie pliku Dockerfile umiejscowionego w katalogu, w którym obecnie jesteśmy. Parametr -t odpowiada za nadanie nazwy obrazowi. W tym przypadku obraz nazywa się serverimage.</br></br>
b) docker run --name server_container -d -p 8080:8080 serverimage</br>
Za pomocą polecenia docker run uruchamiamy kontener na podstawie utworzonego wcześniej obrazu. Parametr --name pozwala nadać nazwę kontenerowi, -p pozwala na ustalenie portu, który ma zostać udostępniony dla kontenera, a parametr -d pozwala na uruchomienie kontenera w tak zwanym "detach mode".</br></br>
c) docker logs server_container</br>
To polecenie pozwala na przejrzenie logów, które wytworzyła aplikacja uruchomiona w kontenerze.</br></br>
d) docker history serverimage</br>
Za pomocą tego polecenia możemy sprawdzić ile warstw posiada zbudowany obraz.</br></br>

Zrzut ekranu prezentujący poprawne działanie:
![alt text](https://github.com/bwpollub/http_server/blob/master/1.PNG)
