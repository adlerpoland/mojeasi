# Architektura serwisów internetowych 2017
Projekt zespołowy
Patryk Adler
Radosław Gołuński
Tomek Cabaj

Galeria zdjeć / Photo Gallery
Aplikacja umożliwa zalogowanym i zarejestrowanym użytkownikom upload zdjęć(jpg,gif,png do 5mb) i ich opisów.
Służy jako publiczna galeria. Użytkownicy mają możliwość dodawania/usuwania/edycji własnych zdjęć.
Dodatkowo użytkownicy zalogowani mają możliwość pisania komentarzy oraz lajkowania zdjęć.
Admin(login: admin@admin.pl) ma możliwość zarządzania wszystkimi zdjęciami.

| Wersja Ruby   | Wersja Rails  |                Baza danych                 | Framework |           Dodatkowe gemy           |
| ------------- |:-------------:|:-------------------------------------------|:---------:|:----------------------------------:|
|      2.4.0    | 5.0.2         | PostgreSQL - Heroku                         | Bootstrap | devise, carrierwave, cloudinary |

Devise - autoryzacja i autentykacja użytkowników

Carrierwave - upload plików tj. zdjęć na hosting Cloudinary

Cloudinary - hosting plikow clodinary.com na potrzeby heroku (współpracuje z Carrierwave)

Will_paginate - gem dzieli komentarze na strony. Po 5 komentarzy na jednej.

Link do heroku: https://salty-waters-65995.herokuapp.com
