*** Settings ***
Library           DatabaseLibrary

*** Variables ***
${dbname}         courses
${dbuser}         root
${dbpasswd}       ${EMPTY}
${dbhost}         localhost
${dbport}         3306
@{queryResults}

*** Test Cases ***
TC1_select_courses
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    courses
    @{queryResults}    Query    CALL _select_courses();

TC2_select_sudents
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    students
    @{queryResults}    Query    CALL _select_students();

TC3_insert_students
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    students
    @{queryResults}    Query    Call _insert_students("Daniela","Jovanovska","Kavadarci",1);

TC4_insert_courses
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    courses
    @{queryResults}    Query    CALL _insert_courses("Front-End","8months",64000);

TC5_delete_students
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    students
    @{queryResults}    Query    CALL _delete_students(17);

TC6_delete_courses
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    courses
    @{queryResults}    Query    CALL _delete_courses(6);

TC7_students_join
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    CALL _students();

TC8_inner_join
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT * FROM students INNER JOIN courses ON students.course_id=courses.course_id;

TC_9_update_students
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    CALL _update_students("Bitola",13);

TC10_update_courses
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    CALL _update_courses(33200,3);
