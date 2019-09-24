insert into status (id, name, sign) values (nextval('status_seq'), 'Budget', 'B');
insert into status (id, name, sign) values (nextval('status_seq'), 'Self-financing', 'SF');
insert into status (id, name, sign) values (nextval('status_seq'), 'Undefined', 'U');

insert into faculty (id, name, place) values (nextval('faculty_seq'), 'West Visayas State University', 'Capacmarca');
insert into faculty (id, name, place) values (nextval('faculty_seq'), 'Universitas Pendidikan Indonesia', 'Qihama');
insert into faculty (id, name, place) values (nextval('faculty_seq'), 'Nanyang Technological University', 'Moxi');
insert into faculty (id, name, place) values (nextval('faculty_seq'), 'Caucasus University', 'Queniquea');
insert into faculty (id, name, place) values (nextval('faculty_seq'), 'Kobe Shinwa Women''s University', 'Cicurug');
insert into faculty (id, name, place) values (nextval('faculty_seq'), 'Universidad Nacional Agraria', 'Sidikalang');
insert into faculty (id, name, place) values (nextval('faculty_seq'), 'Westsächsische Hochschule Zwickau (FH)', 'Marka');
insert into faculty (id, name, place) values (nextval('faculty_seq'), 'Instituto Piaget', 'Barr');
insert into faculty (id, name, place) values (nextval('faculty_seq'), 'Hosei University', 'Ngembo');
insert into faculty (id, name, place) values (nextval('faculty_seq'), 'Hanoi Medical University', 'Vysehrad');

insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Engineering', 'XR', 1);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Legal', 'PD', 2);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Support', 'EW', 3);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Accounting', 'NN', 4);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Research and Development', 'PF', 5);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Sales', 'OW', 6);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Sales', 'ZJ', 7);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Product Management', 'TE', 8);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Research and Development', 'XB', 9);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Legal', 'QW', 10);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Product Management', 'KM', 1);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Engineering', 'WB', 2);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Business Development', 'WB', 3);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Accounting', 'FG', 4);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Engineering', 'TT', 5);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Business Development', 'JW', 6);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Human Resources', 'UU', 7);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Sales', 'IE', 8);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Marketing', 'IK', 9);
insert into department (id, name, sign, faculty_id) values (nextval('department_seq'), 'Marketing', 'SX', 10);

insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Bérengère', 'Butterly', 'JK/1007', 1, 1);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Yénora', 'Kubyszek', 'WL/3862', 2, 2);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Néhémie', 'Fadden', 'UN/3373', 3, 3);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Irène', 'Lergan', 'DQ/5066', 1, 4);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Kévina', 'Sterley', 'UV/0516', 2, 5);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Gaëlle', 'Tomasi', 'LU/4266', 3, 6);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Ophélie', 'Goschalk', 'XB/5391', 1, 7);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Françoise', 'Dymoke', 'RQ/0669', 2, 8);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Lén', 'Arbuckle', 'EP/5810', 3, 9);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Lén', 'Rome', 'JC/1779', 1, 10);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Thérèse', 'Monard', 'KN/9962', 2, 11);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Renée', 'Revance', 'LN/8070', 3, 12);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Séréna', 'Yeatman', 'FE/5443', 1, 13);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Marlène', 'Sizeland', 'FV/6633', 2, 14);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Ruò', 'Crotch', 'AW/3015', 3, 15);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Mårten', 'Klaggeman', 'IN/6344', 1, 16);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Réservés', 'McKerron', 'LU/6294', 2, 17);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Aí', 'Bucklan', 'JU/7163', 3, 18);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Frédérique', 'MacHoste', 'RH/3463', 1, 19);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Célia', 'Moyle', 'PF/3416', 2, 20);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Maëline', 'Benka', 'KC/7308', 3, 1);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Mélinda', 'Armour', 'IV/0632', 1, 2);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Naéva', 'Lynam', 'NO/2912', 2, 3);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Fèi', 'Ferrarini', 'IH/1470', 3, 4);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Crééz', 'Torresi', 'SO/3831', 1, 5);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Åslög', 'Caulwell', 'ZV/3220', 2, 6);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Dorothée', 'Grossier', 'SL/5695', 3, 7);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Léana', 'Kloss', 'EV/8960', 1, 8);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Torbjörn', 'Corsan', 'SG/3242', 2, 9);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Anaël', 'Brindley', 'IL/7360', 3, 10);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Simplifiés', 'Pawle', 'GO/6538', 1, 11);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Lyséa', 'Brosoli', 'FU/1197', 2, 12);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Alizée', 'McKilroe', 'PV/2850', 3, 13);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Torbjörn', 'Spiteri', 'HC/2586', 1, 14);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Torbjörn', 'Smitherham', 'XU/1978', 2, 15);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Östen', 'Garm', 'DV/6783', 3, 16);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Salomé', 'Janos', 'TC/5031', 1, 17);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Léone', 'Lieb', 'EM/5618', 2, 18);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Mélissandre', 'Rowsell', 'KQ/6495', 3, 19);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Estève', 'Kadd', 'KY/7148', 1, 20);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Pò', 'Prawle', 'KN/6727', 2, 1);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Esbjörn', 'Kennerknecht', 'WY/1899', 3, 2);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Chloé', 'Tongs', 'PA/0453', 1, 3);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Michèle', 'Hollyman', 'ON/4215', 2, 4);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Mahélie', 'Foltin', 'SP/1620', 3, 5);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Gösta', 'Levene', 'SQ/0780', 1, 6);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Bénédicte', 'Baigrie', 'GW/0116', 2, 7);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Marlène', 'Spellworth', 'OY/6924', 3, 8);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Cunégonde', 'Salthouse', 'IA/6345', 1, 9);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Félicie', 'Kidstoun', 'EU/6886', 2, 10);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Céline', 'Foltin', 'DW/0972', 3, 11);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Méghane', 'Jowers', 'IC/5623', 1, 12);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Maëlys', 'Ramsby', 'ZG/0767', 2, 13);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Gérald', 'Gunning', 'EA/5455', 3, 14);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Renée', 'Hegarty', 'HS/6221', 1, 15);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Gwenaëlle', 'Dmitrievski', 'AR/0697', 2, 16);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Amélie', 'Zouch', 'TJ/1132', 3, 17);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Céline', 'Hardage', 'GH/7460', 1, 18);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Rachèle', 'Bernardoni', 'KC/2484', 2, 19);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Véronique', 'Starsmore', 'XC/0992', 3, 20);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Maëlyss', 'Harbor', 'FR/6519', 1, 1);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Mélina', 'Oldroyd', 'WZ/8537', 2, 2);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Marie-hélène', 'Gosker', 'JW/5230', 3, 3);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Torbjörn', 'Whybray', 'LG/4432', 1, 4);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Marie-ève', 'Rothera', 'JB/2490', 2, 5);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Yóu', 'Flaxon', 'ZZ/4117', 3, 6);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Maéna', 'Corradino', 'CT/5388', 1, 7);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Andréa', 'Sanbroke', 'PQ/0430', 2, 8);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Pénélope', 'Hartmann', 'SE/0038', 3, 9);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Jú', 'Vernay', 'CM/0508', 1, 10);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Frédérique', 'Boddymead', 'XS/6238', 2, 11);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Andréa', 'Batrick', 'SH/5345', 3, 12);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Gaëlle', 'Royl', 'PI/9685', 1, 13);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Marylène', 'Chicken', 'XX/2265', 2, 14);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Lyséa', 'Mollitt', 'UI/4301', 3, 15);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Fèi', 'Krolle', 'FP/9984', 1, 16);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Audréanne', 'Arnout', 'LG/6330', 2, 17);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Gaïa', 'Stuer', 'YO/8325', 3, 18);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Mén', 'Shearwood', 'WM/1693', 1, 19);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Vénus', 'Luker', 'YL/3316', 2, 20);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Bénédicte', 'Summerson', 'FI/2590', 3, 1);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Bécassine', 'Escolme', 'AI/7328', 1, 2);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Chloé', 'MacGinney', 'FH/6117', 2, 3);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Maï', 'Acors', 'SH/4687', 3, 4);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Laurène', 'Greiswood', 'UH/4111', 1, 5);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Méng', 'Dorro', 'DT/4176', 2, 6);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Médiamass', 'Willgress', 'UM/9545', 3, 7);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Béatrice', 'Losselyong', 'RY/5862', 1, 8);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Noémie', 'Zanussii', 'RB/8695', 2, 9);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Kuí', 'Kingsly', 'NU/7431', 3, 10);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Pò', 'Lorkings', 'XB/9249', 1, 11);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Marlène', 'Lapish', 'ZN/8603', 2, 12);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Ráo', 'Aylen', 'HZ/2625', 3, 13);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Inès', 'Wedmore.', 'YU/3017', 1, 14);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Lèi', 'Gilsthorpe', 'SV/2528', 2, 15);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Mélissandre', 'McKennan', 'FI/9321', 3, 16);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Crééz', 'Hackinge', 'BI/3770', 1, 17);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Lèi', 'Endean', 'XY/8520', 2, 18);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Bérengère', 'McUre', 'CN/0237', 3, 19);
insert into student (id, first_name, last_name, index_number, status_id, department_id) values (nextval('student_seq'), 'Inès', 'Studdard', 'CE/3102', 1, 20);