-- HSQL data init script
-- should work with other sql databases as well

-- data tables creation

DROP TABLE book IF EXISTS;
DROP TABLE author IF EXISTS;

create table book
  (
    id_book     BIGINT not null GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1),
    origTitle   varchar(100) not null,
    author_id   BIGINT not null,
    releaseYear SMALLINT,
    userRate    TINYINT,
    description VARCHAR(2000),
    primary key (ID_BOOK)
);

create table author
(
  id_author BIGINT not null GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1),
  name varchar(80) not null,
  primary key (ID_AUTHOR)
);

  insert into author (name) values ('James Kakalios');
  insert into author (name) values ('Craig Walls');
  insert into author (name) values ('Mala Gupta');
  insert into author (name) values ('J.D. Salinger');

  insert into book (origTitle, author_id, releaseYear, description) values (
    'The Physics of Superheroes',
     (select id_AUTHOR from author a where a.name = 'James Kakalios'), 2006,
      'James Kakalios explores the scientific plausibility of the powers and feats of the most famous superheroes — and discovers that in many cases the comic writers got their science surprisingly right. Along the way he provides an engaging and witty commentary while introducing the lay reader to both classic and cutting-edge concepts in physics, including:<ul>
<li>What Superman’s strength can tell us about the Newtonian physics of force, mass, and acceleration</li>
<li>How Iceman’s and Storm’s powers illustrate the principles of thermal dynamics</li>
<li>The physics behind the death of Spider-Man’s girlfriend Gwen Stacy</li>
<li>Why physics professors gone bad are the most dangerous evil geniuses!</li></ul>');
  insert into book (origTitle, author_id, releaseYear, description) values 
    ('Spring in Action Third Edition',
   (select id_AUTHOR from author a where a.name = 'Craig Walls'), 2011,
    'Totally revised for Spring 3.0, this book is a hands-on guide to the Spring Framework. It covers the latest features, tools, and practices including Spring MVC, REST, Security, Web Flow, and more. Following short code snippets and an ongoing example developed throughout the book, you''ll learn how to build simple and efficient J2EE applications.');
  insert into book (origTitle, author_id, releaseYear, description) values (
    'OCA Java SE 7 Programmer I Certification Guide: Prepare for the 1ZO-803 exam', 
    (select id_AUTHOR from author a where a.name = 'Mala Gupta'), 2011,
  'This book is a comprehensive guide to the 1Z0-803 exam. You''ll explore a wide range of important Java topics as you systematically learn how to pass the certification exam. Each chapter starts with a list of the exam objectives covered in that chapter. You''ll find sample questions and exercises designed to reinforce key concepts and to prepare you for what you''ll see in the real exam, along with numerous tips, notes, and visual aids throughout the book.');
insert into book (origTitle, author_id, releaseYear, description) values ('The Catcher in the Rye',
     (select id_AUTHOR from author a where a.name = 'J.D. Salinger'), 1991, 
     'Anyone who has read J.D. Salinger''s New Yorker stories ? particularly A Perfect Day for Bananafish, Uncle Wiggily in Connecticut, The Laughing Man, and For Esme ? With Love and Squalor, will not be surprised by the fact that his first novel is fully of children. The hero-narrator of THE CATCHER IN THE RYE is an ancient child of sixteen, a native New Yorker named Holden Caulfield. Through circumstances that tend to preclude adult, secondhand description, he leaves his prep school in Pennsylvania and goes underground in New York City for three days. The boy himself is at once too simple and too complex for us to make any final comment about him or his story. Perhaps the safest thing we can say about Holden is that he was born in the world not just strongly attracted to beauty but, almost, hopelessly impaled on it. There are many voices in this novel: children''s voices, adult voices, underground voices-but Holden''s voice is the most eloquent of all. Transcending his own vernacular, yet remaining marvelously faithful to it, he issues a perfectly articulated cry of mixed pain and pleasure. However, like most lovers and clowns and poets of the higher orders, he keeps most of the pain to, and for, himself. The pleasure he gives away, or sets aside, with all his heart. It is there for the reader who can handle it to keep'); 
