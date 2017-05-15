# Architektura serwisów internetowych 2017

Patryk Adler
Radosław Gołuński
Tomek Cabaj

### Galeria zdjeć / Photo Gallery

| Wersja Ruby   | Wersja Rails  |                Baza danych                 | Framework |           Dodatkowe gemy           |
| ------------- |:-------------:|:-------------------------------------------|:---------:|:----------------------------------:|
|      2.4.0    | 5.0.2         | PostgreSQL - Heroku                         | Bootstrap | devise, carrierwave, cloudinary, will_paginate |

### Opis w punktach:

1. Galeria zdjęć umożliwa zalogowanym użytkownikom upload zdjęć (jpg,gif,png do 5mb) wraz z krótkim tytułem i opisem

2. Użytkownicy niezalogowani mają możliwość dowolnego przeglądania galerii

3. Użytkownicy zalogowani mogą dowoli komentować i lajkować (nie swoje) zdjęcia jak i edytować/usuwać własny content

4. Konto admina kontroluje treści i ma możliwość dowolnej edycji bądź usuwania zdjęć

### Opis gemów:

1. Devise - autoryzacja i autentykacja użytkowników

2. Will_paginate - gem dzieli zdjęcia oraz komentarze na stronach tak by wyswietlać tylko kilka na raz

3. Carrierwave - obsługa uploadu plików tj. zdjęć

4. Cloudinary - hosting plikow clodinary.com oraz obróbka zdjęć tj. zmiana rozmaru i wagi plików na potrzeby heroku (gem współpracuje z Carrierwave)

5. ElevateZoom - dynamiczny zoom dla zdjęć w galerii

### Lighthouse wyniki przed i po optymalizacji:

Przed:

<a href="https://ibb.co/gLJQO5"><img src="https://thumb.ibb.co/gLJQO5/Before.png" alt="Before" border="0"></a> <a href="https://ibb.co/mbUobQ"><img src="https://thumb.ibb.co/mbUobQ/Before_two.png" alt="Before_two" border="0"></a>

Po:

<a href="https://ibb.co/diUAqk"><img src="https://thumb.ibb.co/diUAqk/After.png" alt="After" border="0"></a> <a href="https://ibb.co/jFTgwQ"><img src="https://thumb.ibb.co/jFTgwQ/After_two.png" alt="After_two" border="0"></a> 

### Link do wdrożonej aplikacji na heroku: https://protected-ocean-44249.herokuapp.com
