# Feladat 2017-11-02

## CRUD API
> Az API betűszó jelentése Application Programming Interface. Tehát egy olyan 
interfész (kapcsolódási felület), amin keresztül programozhatunk egy alkalmazást akár kívülről, más alkalmazásokból is. Nem kell hozzá ismernünk az alkalmazás működését, elég ha a szükséges parancsokat ismerjük, amelyekkel tudjuk vezérelni.

## Az API működése
> Az API PHP nyelven készült, de nem szükséges a használatához a PHP ismerete.

### config.php
> Az adatbázishoz való csatlakozást adatait és a routing szabályokat tartalmazza. Példa beállítások is vannak benne, ezek alapján könnyen elkészíthetitek a saját rendszereteket.

### DB
> A DB szekció tartalmazza az adatbázis kapcsolódáshoz szükséges három adatot: 
* Adatbázis neve (DBNAME)
* Adatbázis felhasználó neve (DBUSER)
* Adatbázis felhasználó jelszava (DBPASSWORD)

### ROUTING
> A routing szekcióban adhatjátok meg, hogy melyik url esetén melyik lekérdezés fusson le? A lekérdezéseket az sql nevű almappában kell elhelyezni. Nem kell megadni a mappa nevét, csupán a fájl neve szükséges.

## Feladat
### Admin felület
> A frontend oldali admin felületet sablon alapján készítsétek el. Ehhez itt találtok sablonokat és segítséget:  
[SB Admin](https://startbootstrap.com/template-overviews/sb-admin/)  
[SB Admin 1&2](https://startbootstrap.com/template-categories/admin-dashboard/)  
[Gentellela !Expert](https://github.com/puikinsh/gentelella)  
[Metis !Intermadiate](https://github.com/puikinsh/Bootstrap-Admin-Template)  

### Admin felület - JS
> Mellékeltem JAVASCRIPT függvényeket a main.js fájlban. Ezekkel kész kommunikációt tudtok folytatni a PHP API -val. A függvények előtt kommentben röviden le van írva a használatuk.

### Adatbázis
> Hozzatok létre egy új adatbázist felhasználóval együtt az adatok tárolására. Legyen benne legalább 5 tábla, például (users, products, orders, customers, prices). Minden táblának legalább 5 mezője legyen. A táblák között legyen kapcsolat id-k alapján, például az orders táblában legyen customer_id, innen tudja a rendsze, hogy ki a megrendelő. Ugyanígy fontos a kapcsolat például az orders és a products táblák között, mivel az orders táblában fel kell tüntetni hogy melyik terméket rendelték meg.

_példa felhasználó és jelszó: bestyellow/BVxfn7gaLppkcSty_





_példa felhasználó és jelszó: bestyellow/BVxfn7gaLppkcSty_




adatbazis>>>>>>>>>>>>.

management              logistics               purchase        humanresource<zsombi>          maintanence(mark)

1 worker_id                    
2 worker_name
3 worker_birthdate
4 worker_position
5 worker_address

kapcsolodasi felulet>>>>>

itt lesznek a gombok a 5 kulonbozo tablaval (mindengomb kulon HTML oldalra mutat)

weboldal eleresi utvonala: localhost/mappa/htmlfile

sql:
user: Company
pass: company

szerkeszthetonek kell lennie az adatoknak: ha frissties gombra kattint ahol van egy urlap es az urlapo belul input mezokbe lehet updatelni. utana javascriptel input valuvel kiszeded az adatot az input mezokbol.


-lehetsegeshibak, kapcsolodasi hiba rossz URL
-ha nincs felveve a configba az URL
-he megvan a config de nincs meg a sql lekerdezes.


tablazat felallitasa>>>> coinfig.phpba jon az URL pl: products => all_products.sql,
aztan sql filet elkell kesziteni a sql mappban::::: neve all_products.sql abban megirjuk a legkerdezest
pl> SLECT * ALL products;

fejlec dimanikussa tetele> javascriptben kell egy tomb az uj fejlecnevekkel.