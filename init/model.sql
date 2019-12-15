-- Init de la structure
CREATE TABLE `users_usr` (
  `usr_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usr_nom` varchar(255) NOT NULL,
  `usr_prenom` varchar(255) NOT NULL,
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Init des données
INSERT INTO `users_usr` (`usr_id`, `usr_nom`, `usr_prenom`) VALUES
(1, 'Adama', 'William'),
(2, 'Roslin', 'Laura'),
(3, 'Thrace', 'Kara'),
(4, 'Adama', 'Lee'),
(5, 'Baltar', 'Gaius');
