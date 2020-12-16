-- books
insert into book(isbn,title,publisher) values ('123-0321356680','Effective Java','Addison Wesley');
insert into book(isbn,title,publisher) values ('123-1617292545','Spring Boot in Action','Manning Publications');
insert into book(isbn,title,publisher) values ('123-1491900864','Java 8 Pocket Guide','O''Reilly');
insert into book(isbn,title,publisher) values ('123-0321349606','Java Concurrency in Practice','Addison Wesley');

-- authors
insert into book_authors(book_id,first_name,last_name) values (1,'Joshua', 'Bloch');
insert into book_authors(book_id,first_name,last_name) values (2,'Christian', 'Wells');
insert into book_authors(book_id,first_name,last_name) values (3,'Robert', 'Massarelli');
insert into book_authors(book_id,first_name,last_name) values (3,'Patricia', 'LaRue');
insert into book_authors(book_id,first_name,last_name) values (4,'Richard', 'Goetz');
insert into book_authors(book_id,first_name,last_name) values (4,'Joshua', 'Bloch');
insert into book_authors(book_id,first_name,last_name) values (4,'Thomas', 'Beerbower');
insert into book_authors(book_id,first_name,last_name) values (4,'Timothy', 'Povinec');