*** Settings ***
Library           DatabaseLibrary

*** Variables ***
${dbname}         chuchukovska
${dbuser}         root
${dbpasswd}       ${EMPTY}
${dbhost}         localhost
${dbport}         3306
@{queryResults}

*** Test Cases ***
TC1 select_modeli
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT*FROM modeli WHERE price=3000

TC2
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}

tc3
    Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPasswd}    ${DBHost}    ${DBPort}

${output}=
    Execute SQL String    CREATE TABLE Persons    (PersonID {int},    FirstName varchar(255),    Address varchar(255),    City varchar(255));
    Should Be Equal As Strings    ${output}    None

TC4 insert_into_marki
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    INSERT INTO marki (marki_name,country,eu) VALUES ('Audi','D',1);

TC5_marki_desc
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    Select * From marki order by marki_name DESC;

TC6_select_marki"D:
    connect to database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    Select * From marki WHERE country LIKE 'D' ORDER BY marki_name ASC;

TC7_select_marki_eu
    connect to database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT *FROM marki WHERE eu=0;

TC8_select'D'or'jap'
    connect to database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    Select * From marki WHERE country LIKE 'D' or country like 'jap';

TC9_slect_count_desc
    connect to database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT country, COUNT(marki_id) AS Br_na_fabriki FROM marki GROUP BY country ORDER BY br_na_fabriki DESC, country ASC ;

TC10_insert_modelii
    connect to database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    table must exist    modeli
    @{queryResults}    Query    INSERT into modeli(marki_id,modeli_name,price,color) values (4,'E220',50000,'#AA22BB');

TC11_select_modeliA%
    connect to database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    Select * from modeli where modeli_name LIKE 'A%';

TC12_select_between
    connect to database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT * FROM modeli    WHERE price BETWEEN 30000 AND 40000;

TC13_select_where
    connect to database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT * FROM modeli WHERE color='#000000' and price>=40000;

TC14_select_price_max
    connect to database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    Select * from modeli where price =(select max(price)from modeli);

TC15_select_price_min
    connect to database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    Select *from modeli where price =(select min(price)from modeli);

TC16_select_color
    connect to database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    Select *from modeli    WHERE color LIKE '#000000';

TC17_select_inner_join
    connect to database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT modeli.*FROM modeli INNER JOIN marki ON modeli.marki_id=marki.marki_id WHERE marki.country like 'D' ORDER BY modeli.price DESC;

TC18_select_like_innerjoin
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT marki.*FROM modeli INNER JOIN marki ON modeli.marki_id=marki.marki_id WHERE marki.country LIKE 'D' and modeli.price between 3000 AND 4000 ;

TC19_select_innerjoin_and
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT marki.*FROM modeli INNER JOIN marki ON modeli.marki_id=marki.marki_id WHERE modeli.color like '#000000' and modeli.price between 3000 and 5000;

TC20_select_sum_promet
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT marki.country,SUM(modeli.price)as Promet FROM modeli INNER JOIN marki ON modeli.marki_id=marki.marki_id WHERE marki.eu LIKE '1' GROUP BY marki.country ORDER BY Promet DESC;

TC21_select_sum_price
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT marki.country,SUM(modeli.price)as Promet FROM modeli INNER JOIN marki ON modeli.marki_id=marki.marki_id ORDER BY Promet DESC LIMIT 3;

TC22_SP_ call_marki_desc
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    CALL _marki_desc()

TC23_SP_ call_country_desc
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    CALL _counrty_desc()

TC24_SP_call_select_modeli
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    CALL _select_modeli();

Tc25_row
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT * FROM marki
    FOR    ${row}    IN    @{queryResults}
        Log    ${row}
    END

TC26_row_stored
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    CALL _select_marki()
    FOR    ${row}    IN    @{queryResults}
        Log    ${row}
    END

TC27_insert_marki
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table must exist    marki
    Execute Sql String    insert into marki(marki_name,country,eu) values("Audi","FR",1)

TC28_SP_delete_marki
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table must exist    marki
    Execute Sql String    CALL _delete_marki(40);

TC29_st_callmarkibyname
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    CALL _select_marki_by_name();

TC30_st_select_marki_eu
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table must exist    marki
    @{queryResults}    query    CALL _select_marki_by_eu(0,1);

TC31_st_select_marki_by_country
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table must exist    marki
    @{queryResults}    query    CALL _select_marki_by_country('jap');

TC32 SP_call_select_marki
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    marki
    @{queryResults}    Query    CALL _select_marki();

TC33 SP_call_insert_modeli
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    marki
    Execute Sql String    CALL _insert_modeli ('A6',6000,'#000000');

TC34_if
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Check If Exists In Database    CALL _select_marki()
    @{queryResults}    Query    CALL _select_marki
    FOR    ${row}    IN    @{queryResults}
        IF    ${row}=="BMW"
        log
    END
    END

TC35_IF_2
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Check If Exists In Database    call _select_modeli
    @{queryResults}    Query    CALL _select_modeli()
    FOR    ${row}    IN    @{queryResults}
        IF    ${row}==3500
        log
        OR    ${row}==4200
        log
    END
    END
