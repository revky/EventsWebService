use event;

CREATE TABLE Event
(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(200) NOT NULL,
  date TIMESTAMP NOT NULL,
  `description` VARCHAR(1000) NOT NULL,
  creator_user_id INT,
  constraint event_user_id_fk FOREIGN KEY (creator_user_id) REFERENCES user (id) ON DELETE SET NULL ON UPDATE CASCADE
);

INSERT INTO `event`.`event`
(`id`,
`name`,
`date`,
`description`,
`creator_user_id`)
VALUES
(null,
'Jakub Grabowski - Żukówko',
'2022-05-31 18:00:00',
'Yoyoyoyo',
1);

use events;

CREATE TABLE user
(
  id INT PRIMARY KEY AUTO_INCREMENT,
  login VARCHAR(50) NOT NULL UNIQUE,
  email VARCHAR(100) NOT NULL UNIQUE,
  is_admin bit NOT NULL,
  password VARCHAR(50) NOT NULL,
  is_active bit NOT NULL,
  allow_notifications bit NOT NULL
);
