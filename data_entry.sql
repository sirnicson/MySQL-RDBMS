-- Insert data into Admins table
INSERT INTO Admins (ID, first_name, last_name, birth_date, gender, email, address) VALUES
(1023, 'Nicholas', 'Eghagha','1990-10-10','Male', 'neghagha@manolya.edu', '300, Chester Avenue, Ikeja, Lagos'),
(1014, 'Olawole', 'Ayoba', '1985-05-15', 'Male', 'oayoba@manolya.edu', '150 Baker Street, Victoria Island, Lagos');

-- Insert data into Teachers table
INSERT INTO Teachers (ID, first_name, last_name, birth_date, gender, email, address) VALUES
(1102, 'Tom', 'Lanester', '1975-03-22', 'Male', 'tlanester@manolya.edu', '21 Maple Street, Toronto, Canada'),
(1221, 'Jane', 'Coldwell', '1982-08-14', 'Female', 'jcoldwell@manolya.edu', '42 Baker Street, London, United Kingdom'),
(1103, 'Matthew', 'Eromosele', '1990-07-05', 'Male', 'meromosele@manolya.edu', '18 Ikoyi Crescent, Lagos, Nigeria'),
(1154, 'Paula', 'Manuella', '1985-11-23', 'Female', 'pmanuella@manolya.edu', '67 Rue de Rivoli, Paris, France'),
(1101, 'Sam', 'Gudenberg', '1978-04-30', 'Male', 'sgudenberg@manolya.edu', '10 Karl-Liebknecht-Strasse, Berlin, Germany'),
(1216, 'Elena', 'Augelera', '1987-09-09', 'Female', 'eagulera@manolya.edu', '45 Las Ramblas, Barcelona, Spain'),
(1167, 'Paul', 'Harrison', '1980-06-17', 'Male', 'pharrison@manolya.edu', '33 5th Avenue, New York, USA');

-- Insert data into Courses table
INSERT INTO Courses (ID, course_name, semester, is_offered, admin_id) VALUES
(101, 'Introduction to Data Science', 'Fall', true, '1023'),
(102, 'Web Development Fundamentals', 'Fall', true, '1014'),
(103, 'Entrepreneurship in the Digital Age', 'Fall', true, '1014'),
(104, 'Database Management Systems', 'Fall', true, '1023'),
(105, 'Project Management for Tech Projects', 'Fall', true, '1014'),
(111, 'Cybersecurity for Professionals', 'Spring', true, '1014'),
(112, 'Machine Learning and AI for Business', 'Spring', true, '1023'),
(113, 'Blockchain Technology and Its Applications', 'Spring', true, '1023'),
(114, 'Digital Marketing Strategies', 'Spring', true, '1014'),
(115, 'Data Analytics for Business Decisions', 'Spring', true, '1023');

-- Insert data into Students table
INSERT INTO Students (ID, first_name, last_name, birth_date, gender, email, address, enrollment_year) VALUES
(2311, 'Chukwudu', 'Francis', '1986-08-15', 'Male', 'cfrancis@manolya.edu', '15 Marina Street, Lagos, Nigeria', '2022'),
(2345, 'Jane', 'Smith', '1987-11-21', 'Female', 'jsmith@manolya.edu', '24 Baker Street, London, UK', '2023'),
(2211, 'Alex', 'Brown', '1993-03-12', 'Male', 'abrown@manolya.edu', '120 5th Avenue, New York, USA', '2022'),
(2304, 'Emma', 'Agundele', '1998-05-04', 'Female', 'eagundele@manolya.edu', '32 Victoria Island, Lagos, Nigeria', '2023'),
(2402, 'Liam', 'Green', '1991-07-23', 'Male', 'lgreen@manolya.edu', '45 Rue de Rivoli, Paris, France', '2024'),
(2316, 'Olivia', 'Pope', '1988-12-16', 'Female', 'opope@manolya.edu', '56 Queen Street, Toronto, Canada', '2023'),
(2217, 'Shao', 'Xie', '1997-09-01', 'Male', 'sxie@manolya.edu', '88 Chang’an Avenue, Beijing, China', '2022'),
(2407, 'Sophia', 'Alonso', '1994-02-10', 'Female', 'salonso@manolya.edu', '67 Gran Via, Madrid, Spain', '2024'),
(2312, 'Marcus', 'Germaine', '1992-03-15', 'Male', 'mgermaine@manolya.edu', '32 Elizabeth Street, Sydney, Australia', '2023'),
(2410, 'Mia', 'Silverstone', '1994-11-11', 'Female', 'msilverstone@manolya.edu', '101 George Street, Edinburgh, UK', '2024'),
(2309, 'Lucas', 'Brown', '1993-01-28', 'Male', 'lucas.brown@manolya.edu', '17 Collins Street, Melbourne, Australia', '2023'),
(2212, 'Azra', 'Karayilan', '1990-10-30', 'Female', 'akarayilan@manolya.edu', '45 Taksim Square, Istanbul, Turkey', '2022'),
(2313, 'Ethan', 'Parker', '1997-06-14', 'Male', 'eparker@manolya.edu', '1600 Amphitheatre Parkway, Miami, USA', '2023'),
(2314, 'Mathias', 'Jogurnese', '1992-02-25', 'Male', 'mjorgurnese@manolya.edu', '75 King Street, Toronto, Canada', '2023'),
(2415, 'Henry', 'Ogbayagbon', '1989-03-03', 'Male', 'hogbayagbon@manolya.edu', '10 Broad Street, Lagos, Nigeria', '2024'),
(2306, 'Murat', 'Çelik', '1993-09-12', 'Male', 'mcelik@manolya.edu', '20 Ataturk Boulevard, Ankara, Turkey', '2023'),
(2401, 'James', 'Borabora', '1985-12-20', 'Male', 'jborabora@manolya.edu', '5 Orchard Road, Singapore', '2024'),
(2218, 'Isabella', 'Zaragozze', '1986-04-10', 'Female', 'izaragozze@manolya.edu', '42 Roma Street, Rome, Italy', '2022'),
(2319, 'Benjamin', 'Won Su', '1922-08-30', 'Male', 'bwonsu@manolya.edu', '92 Hongdae Street, Seoul, South Korea', '2023'),
(2320, 'Charlotte', 'Lime', '1992-01-22', 'Female', 'clime@manolya.edu', '55 Rue Montmartre, Paris, France', '2023'),
(2404, 'Daniel', 'Victor', '1994-10-15', 'Male', 'dvictor@manolya.edu', '33 Market Street, Nairobi, Kenya', '2024'),
(2222, 'Sara', 'Imani', '1990-05-08', 'Female', 'simani@manolya.edu', '7 Churchill Road, Cape Town, South Africa', '2022'),
(2323, 'Felix', 'Johnson', '1992-11-18', 'Male', 'fjohnson@manolya.edu', '81 King William Street, Adelaide, Australia', '2023'),
(2324, 'Marta', 'Silva', '1995-07-06', 'Female', 'msilva@manolya.edu', '88 Avenida Paulista, São Paulo, Brazil', '2023'),
(2405, 'Ibrahim', 'Ali', '1994-01-12', 'Male', 'iali@manolya.edu', '33 Zayed St, Cairo, Egypt', '2024'),
(2406, 'Rebecca', 'Shaw', '1996-03-25', 'Female', 'rshaw@manolya.edu', '10 Central Park Ave, New York, USA', '2024'),
(2327, 'George', 'Carter', '1993-04-15', 'Male', 'gcarter@manolya.edu', '50 Oxford St, London, UK', '2023'),
(2228, 'Alice', 'Gomez', '1990-09-05', 'Female', 'agomez@manolya.edu', '90 Rua da Liberdade, Lisbon, Portugal', '2022'),
(2409, 'Noah', 'Diaz', '1985-10-08', 'Male', 'ndiaz@manolya.edu', '22 Avenida Libertador, Buenos Aires, Argentina', '2024'),
(2400, 'Zara', 'Khan', '1988-02-27', 'Female', 'zkhan@manolya.edu', '12 Market St, Islamabad, Pakistan', '2024'),
(2331, 'Lucas', 'Fernandez', '1991-06-14', 'Male', 'lfernandez@manolya.edu', '54 Las Ramblas, Barcelona, Spain', '2023'),
(2332, 'Ella', 'Roberts', '1991-05-03', 'Female', 'eroberts@manolya.edu', '76 High St, Dublin, Ireland', '2023'),
(2413, 'Amir', 'Singh', '1994-07-29', 'Male', 'asingh@manolya.edu', '66 Connaught Place, New Delhi, India', '2022'),
(2234, 'Grace', 'Kim', '1990-11-09', 'Female', 'gkim@manolya.edu', '123 Insadong St, Seoul, South Korea', '2022'),
(2414, 'Leo', 'Martinez', '1987-12-19', 'Male', 'lmartinez@manolya.edu', '34 Paseo de la Reforma, Mexico City, Mexico', '2024'),
(2416, 'Ava', 'Murphy', '1994-08-24', 'Female', 'amurphy@manolya.edu', '77 Collins St, Melbourne, Australia', '2024'),
(2337, 'Oscar', 'Chen', '1988-09-18', 'Male', 'ochen@manolya.edu', '101 Nathan Rd, Hong Kong', '2023'),
(2338, 'Sofia', 'Wang', '1997-11-21', 'Female', 'swang@manolya.edu', '88 Orchard Rd, Singapore', '2023'),
(2418, 'Jaxon', 'Lee', '1991-05-11', 'Male', 'jlee@manolya.edu', '55 Shibuya, Tokyo, Japan', '2024'),
(2204, 'Amelia', 'Scott', '1994-02-14', 'Female', 'ascott@manolya.edu', '20 Marine Drive, Mumbai, India', '2022');

-- Insert data into Course_Allocation table
INSERT INTO Course_Allocation (course_id, teacher_id, admin_id) VALUES
(101, 1102, 1023), -- Tom Lanester for 'Introduction to Data Science'
(102, 1221, 1014), -- Jane Coldwell for 'Web Development Fundamentals'
(103, 1103, 1023), -- Mattew Eromosele for 'Entrepreneurship in the Digital Age'
(104, 1154, 1014), -- Paula Manuella for 'Database Management Systems'
(105, 1101, 1023), -- Sam Gudenberg for 'Project Management for Tech Projects'
(111, 1216, 1014), -- Elena Augelera for 'Cybersecurity for Professionals'
(112, 1167, 1023), -- Paul Harrison for 'Machine Learning and AI for Business'
(113, 1102, 1014), -- Tom Lanester for 'Blockchain Technology and Its Applications'
(114, 1221, 1023), -- Jane Coldwell for 'Digital Marketing Strategies'
(115, 1154, 1014); -- Paula Manuella for 'Data Analytics for Business Decisions'


-- Insert data into Course_Registration table
INSERT INTO Course_Registration (student_id, course_id, registration_date) VALUES
(2311, 101, '2023-09-10'),  -- Chukwudu Francis (Fall)
(2311, 102, '2023-09-11'),  -- Chukwudu Francis (Fall)
(2311, 111, '2024-02-10'),  -- Chukwudu Francis (Spring)
(2311, 115, '2024-02-11'),  -- Chukwudu Francis (Spring)

(2345, 104, '2023-09-12'),  -- Jane Smith (Fall)
(2345, 103, '2023-09-13'),  -- Jane Smith (Fall)
(2345, 112, '2024-02-14'),  -- Jane Smith (Spring)
(2345, 114, '2024-02-15'),  -- Jane Smith (Spring)

(2211, 102, '2023-09-12'),  -- Alex Brown (Fall)
(2211, 103, '2023-09-13'),  -- Alex Brown (Fall)
(2211, 111, '2024-02-12'),  -- Alex Brown (Spring)
(2211, 113, '2024-02-16'),  -- Alex Brown (Spring)

(2304, 101, '2023-09-10'),  -- Emma Agundele (Fall)
(2304, 105, '2023-09-11'),  -- Emma Agundele (Fall)
(2304, 114, '2024-02-13'),  -- Emma Agundele (Spring)
(2304, 115, '2024-02-17'),  -- Emma Agundele (Spring)

(2402, 105, '2023-09-14'),  -- Liam Green (Fall)
(2402, 104, '2023-09-15'),  -- Liam Green (Fall)
(2402, 113, '2024-02-18'),  -- Liam Green (Spring)
(2402, 112, '2024-02-19'),  -- Liam Green (Spring)

(2316, 101, '2023-09-16'),  -- Olivia Pope (Fall)
(2316, 104, '2023-09-17'),  -- Olivia Pope (Fall)
(2316, 115, '2024-02-20'),  -- Olivia Pope (Spring)
(2316, 111, '2024-02-21'),  -- Olivia Pope (Spring)

(2217, 102, '2023-09-18'),  -- Shao Xie (Fall)
(2217, 101, '2023-09-19'),  -- Shao Xie (Fall)
(2217, 114, '2024-02-22'),  -- Shao Xie (Spring)
(2217, 115, '2024-02-23'),  -- Shao Xie (Spring)

(2407, 101, '2023-09-20'),  -- Sophia Alonso (Fall)
(2407, 104, '2023-09-21'),  -- Sophia Alonso (Fall)
(2407, 113, '2024-02-24'),  -- Sophia Alonso (Spring)
(2407, 112, '2024-02-25'),  -- Sophia Alonso (Spring)

(2312, 103, '2023-09-22'),  -- Marcus Germaine (Fall)
(2312, 104, '2023-09-23'),  -- Marcus Germaine (Fall)
(2312, 115, '2024-02-26'),  -- Marcus Germaine (Spring)
(2312, 112, '2024-02-27'),  -- Marcus Germaine (Spring)

(2410, 101, '2023-09-24'),  -- Mia Silverstone (Fall)
(2410, 103, '2023-09-25'),  -- Mia Silverstone (Fall)
(2410, 111, '2024-02-28'),  -- Mia Silverstone (Spring)
(2410, 113, '2024-02-29'),  -- Mia Silverstone (Spring)

(2309, 102, '2023-09-26'),  -- Lucas Brown (Fall)
(2309, 104, '2023-09-27'),  -- Lucas Brown (Fall)
(2309, 114, '2024-03-01'),  -- Lucas Brown (Spring)
(2309, 115, '2024-03-02'),  -- Lucas Brown (Spring)

(2212, 104, '2023-09-28'),  -- Azra Karayilan (Fall)
(2212, 105, '2023-09-29'),  -- Azra Karayilan (Fall)
(2212, 113, '2024-03-03'),  -- Azra Karayilan (Spring)
(2212, 111, '2024-03-04'),  -- Azra Karayilan (Spring)

(2313, 103, '2023-09-30'),  -- Ethan Parker (Fall)
(2313, 104, '2023-10-01'),  -- Ethan Parker (Fall)
(2313, 115, '2024-03-05'),  -- Ethan Parker (Spring)
(2313, 112, '2024-03-06'),  -- Ethan Parker (Spring)

(2314, 104, '2023-10-02'),  -- Mathias Jogurnese (Fall)
(2314, 105, '2023-10-03'),  -- Mathias Jogurnese (Fall)
(2314, 111, '2024-03-07'),  -- Mathias Jogurnese (Spring)
(2314, 113, '2024-03-08'),  -- Mathias Jogurnese (Spring)

(2415, 103, '2023-10-04'),  -- Henry Ogbayagbon (Fall)
(2415, 104, '2023-10-05'),  -- Henry Ogbayagbon (Fall)
(2415, 112, '2024-03-09'),  -- Henry Ogbayagbon (Spring)
(2415, 113, '2024-03-10'),  -- Henry Ogbayagbon (Spring)

(2306, 105, '2023-10-06'),  -- Murat Çelik (Fall)
(2306, 102, '2023-10-07'),  -- Murat Çelik (Fall)
(2306, 114, '2024-03-11'),  -- Murat Çelik (Spring)
(2306, 115, '2024-03-12'),  -- Murat Çelik (Spring)

(2401, 101, '2023-10-08'),  -- James Borabora (Fall)
(2401, 104, '2023-10-09'),  -- James Borabora (Fall)
(2401, 112, '2024-03-13'),  -- James Borabora (Spring)
(2401, 113, '2024-03-14'),  -- James Borabora (Spring)

(2218, 101, '2023-10-10'),  -- Isabella Zaragozze (Fall)
(2218, 102, '2023-10-11'),  -- Isabella Zaragozze (Fall)
(2218, 113, '2024-03-15'),  -- Isabella Zaragozze (Spring)
(2218, 115, '2024-03-16'),  -- Isabella Zaragozze (Spring)

(2319, 105, '2023-10-12'),  -- Benjamin Won Su (Fall)
(2319, 103, '2023-10-13'),  -- Benjamin Won Su (Fall)
(2319, 113, '2024-03-17'),  -- Benjamin Won Su (Spring)
(2319, 114, '2024-03-18'),  -- Benjamin Won Su (Spring)

(2320, 104, '2023-10-14'),  -- Charlotte Lime (Fall)
(2320, 102, '2023-10-15'),  -- Charlotte Lime (Fall)
(2320, 114, '2024-03-19'),  -- Charlotte Lime (Spring)
(2320, 115, '2024-03-20'),  -- Charlotte Lime (Spring)

(2404, 104, '2023-10-16'),  -- Daniel Victor (Fall)
(2404, 105, '2023-10-17'),  -- Daniel Victor (Fall)
(2404, 113, '2024-03-21'),  -- Daniel Victor (Spring)
(2404, 111, '2024-03-22'),  -- Daniel Victor (Spring)

(2222, 101, '2023-10-17'),  -- Sara Imani (Fall)
(2222, 104, '2023-10-18'),  -- Sara Imani (Fall)
(2222, 114, '2024-03-22'),  -- Sara Imani (Spring)
(2222, 115, '2024-03-23'),  -- Sara Imani (Spring)

(2323, 102, '2023-10-17'),  -- Felix Johnson (Fall)
(2323, 105, '2023-10-18'),  -- Felix Johnson (Fall)
(2323, 112, '2024-03-22'),  -- Felix Johnson (Spring)
(2323, 114, '2024-03-24'),  -- Felix Johnson (Spring)

(2324, 103, '2023-10-17'),  -- Marta Silva (Fall)
(2324, 105, '2023-10-18'),  -- Marta Silva (Fall)
(2324, 113, '2024-03-22'),  -- Marta Silva (Spring)
(2324, 114, '2024-03-23'),  -- Marta Silva (Spring)

(2405, 101, '2023-10-17'),  -- Ibrahim Ali (Fall)
(2405, 105, '2023-10-18'),  -- Ibrahim Ali (Fall)
(2405, 114, '2024-03-22'),  -- Ibrahim Ali (Spring)
(2405, 115, '2024-03-23'),  -- Ibrahim Ali (Spring)

(2406, 102, '2023-10-17'),  -- Rebecca Shaw (Fall)
(2406, 105, '2023-10-18'),  -- Rebecca Shaw (Fall)
(2406, 113, '2024-03-22'),  -- Rebecca Shaw (Spring)
(2406, 114, '2024-03-24'),  -- Rebecca Shaw (Spring)

(2327, 103, '2023-10-17'),  -- George Carter (Fall)
(2327, 104, '2023-10-18'),  -- George Carter (Fall)
(2327, 111, '2024-03-22'),  -- George Carter (Spring)
(2327, 112, '2024-03-23'),  -- George Carter (Spring)

(2228, 101, '2023-10-17'),  -- Alice Gomez (Fall)
(2228, 105, '2023-10-18'),  -- Alice Gomez (Fall)
(2228, 113, '2024-03-22'),  -- Alice Gomez (Spring)
(2228, 115, '2024-03-23'),  -- Alice Gomez (Spring)

(2409, 102, '2023-10-17'),  -- Noah Diaz (Fall)
(2409, 105, '2023-10-18'),  -- Noah Diaz (Fall)
(2409, 112, '2024-03-22'),  -- Noah Diaz (Spring)
(2409, 113, '2024-03-23'),  -- Noah Diaz (Spring)

(2400, 104, '2023-10-17'),  -- Zara Khan (Fall)
(2400, 105, '2023-10-18'),  -- Zara Khan (Fall)
(2400, 113, '2024-03-22'),  -- Zara Khan (Spring)
(2400, 115, '2024-03-23'),  -- Zara Khan (Spring)

(2331, 101, '2023-10-17'),  -- Lucas Fernandez (Fall)
(2331, 103, '2023-10-18'),  -- Lucas Fernandez (Fall)
(2331, 112, '2024-03-22'),  -- Lucas Fernandez (Spring)
(2331, 114, '2024-03-23'),  -- Lucas Fernandez (Spring)

(2332, 102, '2023-10-17'),  -- Ella Roberts (Fall)
(2332, 105, '2023-10-18'),  -- Ella Roberts (Fall)
(2332, 114, '2024-03-22'),  -- Ella Roberts (Spring)
(2332, 115, '2024-03-24'),  -- Ella Roberts (Spring)

(2413, 102, '2023-10-17'),  -- Amir Singh (Fall)
(2413, 103, '2023-10-18'),  -- Amir Singh (Fall)
(2413, 113, '2024-03-22'),  -- Amir Singh (Spring)
(2413, 115, '2024-03-23'),  -- Amir Singh (Spring)

(2234, 102, '2023-10-17'),  -- Grace Kim (Fall)
(2234, 104, '2023-10-18'),  -- Grace Kim (Fall)
(2234, 112, '2024-03-22'),  -- Grace Kim (Spring)
(2234, 115, '2024-03-23'),  -- Grace Kim (Spring)

(2414, 101, '2023-10-17'),  -- Leo Martinez (Fall)
(2414, 105, '2023-10-18'),  -- Leo Martinez (Fall)
(2414, 113, '2024-03-22'),  -- Leo Martinez (Spring)
(2414, 115, '2024-03-24'),  -- Leo Martinez (Spring)

(2416, 104, '2023-10-17'),  -- Ava Murphy (Fall)
(2416, 105, '2023-10-18'),  -- Ava Murphy (Fall)
(2416, 114, '2024-03-22'),  -- Ava Murphy (Spring)
(2416, 115, '2024-03-23'),  -- Ava Murphy (Spring)

(2337, 103, '2023-10-17'),  -- Oscar Chen (Fall)
(2337, 105, '2023-10-18'),  -- Oscar Chen (Fall)
(2337, 112, '2024-03-22'),  -- Oscar Chen (Spring)
(2337, 114, '2024-03-23'),  -- Oscar Chen (Spring)

(2338, 101, '2023-10-17'),  -- Sofia Wang (Fall)
(2338, 102, '2023-10-18'),  -- Sofia Wang (Fall)
(2338, 114, '2024-03-22'),  -- Sofia Wang (Spring)
(2338, 115, '2024-03-23'),  -- Sofia Wang (Spring)

(2418, 102, '2023-10-17'),  -- Jaxon Lee (Fall)
(2418, 103, '2023-10-18'),  -- Jaxon Lee (Fall)
(2418, 111, '2024-03-22'),  -- Jaxon Lee (Spring)
(2418, 115, '2024-03-24'),  -- Jaxon Lee (Spring)

(2204, 104, '2023-10-17'),  -- Amelia Scott (Fall)
(2204, 105, '2023-10-18'),  -- Amelia Scott (Fall)
(2204, 111, '2024-03-22'),  -- Amelia Scott (Spring)
(2204, 113, '2024-03-23');  -- Amelia Scott (Spring)


-- Insert grades for students registered for courses
INSERT INTO Grading (student_id, course_id, grade, teacher_id) VALUES
(2311, 101, 'Pass', 1102), -- Chukwudu Francis, Introduction to Data Science, Tom Lanester
(2311, 102, 'Fail', 1221), -- Chukwudu Francis, Web Development Fundamentals, Jane Coldwell
(2311, 111, 'Pass', 1216), -- Chukwudu Francis, Cybersecurity for Professionals, Elena Augelera
(2311, 115, 'Pass', 1216), -- Chukwudu Francis, Data Analytics for Business Decisions, Paula Manuella

(2345, 104, 'Pass', 1154), -- Jane Smith, Database Management Systems, Paula Manuella
(2345, 103, 'Fail', 1103), -- Jane Smith, Entrepreneurship in the Digital Age, Mattew Eromosele
(2345, 112, 'Pass', 1167), -- Jane Smith, Machine Learning and AI for Business, Paul Harrison
(2345, 114, 'Fail', 1221), -- Jane Smith, Digital Marketing Strategies, Jane Coldwell

(2211, 102, 'Pass', 1167), -- Alex Brown, Machine Learning and AI for Business, Paul Harrison
(2211, 103, 'Fail', 1103), -- Alex Brown, Entrepreneurship in the Digital Age, Mattew Eromosele
(2211, 111, 'Pass', 1216), -- Alex Brown, Cybersecurity for Professionals, Elena Augelera
(2211, 113, 'Pass', 1102), -- Alex Brown, Introduction to Data Science, Tom Lanester

(2304, 101, 'Fail', 1102), -- Emma Agundele, Introduction to Data Science, Tom Lanester
(2304, 105, 'Pass', 1101), -- Emma Agundele, Project Management for Tech Projects, Sam Gudenberg
(2304, 114, 'Pass', 1221), -- Emma Agundele, Digital Marketing Strategies, Jane Coldwell
(2304, 115, 'Pass', 1154), -- Emma Agundele, Data Analytics for Business Decisions, Paula Manuella

(2402, 105, 'Pass', 1101), -- Liam Green, Project Management for Tech Projects, Sam Gudenberg
(2402, 104, 'Pass', 1154), -- Liam Green, Database Management Systems, Paula Manuella
(2402, 113, 'Fail', 1102), -- Liam Green, Blockchain Technology and Its Applications, Tom Lanester
(2402, 112, 'Pass', 1167), -- Liam Green, Machine Learning and AI for Business, Paul Harrison

(2316, 101, 'Pass', 1102), -- Olivia Pope, Introduction to Data Science, Tom Lanester
(2316, 104, 'Fail', 1154), -- Olivia Pope, Database Management Systems, Paula Manuella
(2316, 115, 'Pass', 1154), -- Olivia Pope, Data Analytics for Business Decisions, Paula Manuella
(2316, 111, 'Pass', 1216), -- Olivia Pope, Cybersecurity for Professionals, Elena Augelera

(2217, 102, 'Fail', 1221), -- Shao Xie, Web Development Fundamentals, Jane Coldwell
(2217, 101, 'Pass', 1102), -- Shao Xie, Introduction to Data Science, Tom Lanester
(2217, 114, 'Pass', 1221), -- Shao Xie, Digital Marketing Strategies, Jane Coldwell
(2217, 115, 'Pass', 1154), -- Shao Xie, Data Analytics for Business Decisions, Paula Manuella

(2407, 101, 'Pass', 1101), -- Sophia Alonso, Introduction to Data Science, Tom Lanester
(2407, 104, 'Fail', 1103), -- Sophia Alonso, Database Management Systems, Paula Manuella
(2407, 113, 'Pass', 1154), -- Sophia Alonso, Blockchain Technology and Its Applications, Tom Lanester
(2407, 112, 'Pass', 1221), -- Sophia Alonso, Machine Learning and AI for Business, Paul Harrison

(2312, 103, 'Pass', 1103), -- Marcus Germaine, Entrepreneurship in the Digital Age, Mattew Eromosele
(2312, 104, 'Pass', 1154), -- Marcus Germaine, Database Management Systems, Paula Manuella
(2312, 115, 'Pass', 1154), -- Marcus Germaine, Data Analytics for Business Decisions, Paula Manuella
(2312, 112, 'Fail', 1167), -- Marcus Germaine, Machine Learning and AI for Business, Paul Harrison

(2410, 101, 'Fail', 1102), -- Mia Silverstone, Introduction to Data Science, Tom Lanester
(2410, 103, 'Pass', 1103), -- Mia Silverstone, Entrepreneurship in the Digital Age, Mattew Eromosele
(2410, 111, 'Pass', 1216), -- Mia Silverstone, Cybersecurity for Professionals, Elena Augelera
(2410, 113, 'Pass', 1102), -- Mia Silverstone, Blockchain Technology and Its Applications, Tom Lanester

(2309, 102, 'Pass', 1221),  -- Lucas Brown, Web Development Fundamentals, Jane Coldwell
(2309, 104, 'Pass', 1154),  -- Lucas Brown, Database Management Systems, Paula Manuella
(2309, 114, 'Pass', 1221),  -- Lucas Brown, Digital Marketing Strategies, Jane Coldwell
(2309, 115, 'Pass', 1154),  -- Lucas Brown, Data Analytics for Business Decisions, Paula Manuella

(2212, 104, 'Pass', 1154),  -- Azra Karayilan, Database Management Systems, Paula Manuella
(2212, 105, 'Pass', 1101),  -- Azra Karayilan, Project Management for Tech Projects, Sam Gudenberg
(2212, 113, 'Pass', 1102),  -- Azra Karayilan, Blockchain Technology and Its Applications, Tom Lanester
(2212, 111, 'Fail', 1216),  -- Azra Karayilan, Cybersecurity for Professionals, Elena Augelera

(2313, 103, 'Pass', 1103),  -- Ethan Parker, Entrepreneurship in the Digital Age, Mattew Eromosele
(2313, 104, 'Pass', 1154),  -- Ethan Parker, Database Management Systems, Paula Manuella
(2313, 115, 'Pass', 1154),  -- Ethan Parker, Data Analytics for Business Decisions, Paula Manuella
(2313, 112, 'Pass', 1167),  -- Ethan Parker, Machine Learning and AI for Business, Paul Harrison

(2314, 104, 'Pass', 1154),  -- Mathias Jogurnese, Database Management Systems, Paula Manuella
(2314, 105, 'Pass', 1101),  -- Mathias Jogurnese, Project Management for Tech Projects, Sam Gudenberg
(2314, 111, 'Pass', 1216),  -- Mathias Jogurnese, Cybersecurity for Professionals, Elena Augelera
(2314, 113, 'Pass', 1102),  -- Mathias Jogurnese, Blockchain Technology and Its Applications, Tom Lanester

(2415, 103, 'Pass', 1103),  -- Henry Ogbayagbon, Entrepreneurship in the Digital Age, Mattew Eromosele
(2415, 104, 'Pass', 1154),  -- Henry Ogbayagbon, Database Management Systems, Paula Manuella
(2415, 112, 'Pass', 1167),  -- Henry Ogbayagbon, Machine Learning and AI for Business, Paul Harrison
(2415, 113, 'Fail', 1102),  -- Henry Ogbayagbon, Blockchain Technology and Its Applications, Tom Lanester

(2306, 105, 'Pass', 1101),  -- Murat Çelik, Project Management for Tech Projects, Sam Gudenberg
(2306, 102, 'Pass', 1221),  -- Murat Çelik, Web Development Fundamentals, Jane Coldwell
(2306, 114, 'Pass', 1221),  -- Murat Çelik, Digital Marketing Strategies, Jane Coldwell
(2306, 115, 'Pass', 1154),  -- Murat Çelik, Data Analytics for Business Decisions, Paula Manuella

(2401, 101, 'Pass', 1102),  -- James Borabora, Introduction to Data Science, Tom Lanester
(2401, 104, 'Fail', 1154),  -- James Borabora, Database Management Systems, Paula Manuella
(2401, 112, 'Pass', 1167),  -- James Borabora, Machine Learning and AI for Business, Paul Harrison
(2401, 113, 'Fail', 1102),  -- James Borabora, Blockchain Technology and Its Applications, Tom Lanester

(2218, 101, 'Pass', 1102),  -- Isabella Zaragozze, Introduction to Data Science, Tom Lanester
(2218, 102, 'Pass', 1221),  -- Isabella Zaragozze, Web Development Fundamentals, Jane Coldwell
(2218, 113, 'Pass', 1102),  -- Isabella Zaragozze, Blockchain Technology and Its Applications, Tom Lanester
(2218, 115, 'Pass', 1154),  -- Isabella Zaragozze, Data Analytics for Business Decisions, Paula Manuella

(2319, 105, 'Pass', 1101),  -- Benjamin Won Su, Project Management for Tech Projects, Sam Gudenberg
(2319, 103, 'Pass', 1103),  -- Benjamin Won Su, Entrepreneurship in the Digital Age, Mattew Eromosele
(2319, 113, 'Pass', 1102),  -- Benjamin Won Su, Blockchain Technology and Its Applications, Tom Lanester
(2319, 114, 'Pass', 1221),  -- Benjamin Won Su, Digital Marketing Strategies, Jane Coldwell

(2320, 104, 'Fail', 1154),  -- Charlotte Lime, Database Management Systems, Paula Manuella
(2320, 102, 'Pass', 1221),  -- Charlotte Lime, Web Development Fundamentals, Jane Coldwell
(2320, 114, 'Pass', 1221),  -- Charlotte Lime, Digital Marketing Strategies, Jane Coldwell
(2320, 115, 'Pass', 1154),  -- Charlotte Lime,  Data Analytics for Business Decisions, Paula Manuella

(2404, 104, 'Fail', 1154),  -- Daniel Victor, Database Management Systems, Paula Manuella
(2404, 105, 'Pass', 1101),  -- Daniel Victor, Project Management for Tech Projects, Sam Gudenberg
(2404, 113, 'Pass', 1102),  -- Daniel Victor, Blockchain Technology and Its Applications, Tom Lanester
(2404, 111, 'Pass', 1216),  -- Daniel Victor, Cybersecurity for Professionals, Elena Augelera

(2222, 101, 'Pass', 1102),  -- Sara Imani, Introduction to Data Science, Tom Lanester
(2222, 104, 'Pass', 1154),  -- Sara Imani, Database Management Systems, Paula Manuella
(2222, 114, 'Pass', 1221),  -- Sara Imani, Digital Marketing Strategies, Jane Coldwell
(2222, 115, 'Pass', 1154),  -- Sara Imani, Data Analytics for Business Decisions, Paula Manuella

(2323, 102, 'Pass', 1221),  -- Felix Johnson, Web Development Fundamentals, Jane Coldwell
(2323, 105, 'Pass', 1101),  -- Felix Johnson, Project Management for Tech Projects, Sam Gudenberg
(2323, 112, 'Pass', 1167),  -- Felix Johnson, Machine Learning and AI for Business, Paul Harrison
(2323, 114, 'Pass', 1221),  -- Felix Johnson, Digital Marketing Strategies, Jane Coldwell

(2324, 103, 'Pass', 1103),  -- Marta Silva, Entrepreneurship in the Digital Age, Mattew Eromosele
(2324, 105, 'Pass', 1101),  -- Marta Silva, Project Management for Tech Projects, Sam Gudenberg
(2324, 113, 'Pass', 1102),  -- Marta Silva, Blockchain Technology and Its Applications, Tom Lanester
(2324, 114, 'Pass', 1221),  -- Marta Silva, Digital Marketing Strategies, Jane Coldwell

(2405, 101, 'Pass', 1102),  -- Ibrahim Ali, Introduction to Data Science, Tom Lanester
(2405, 105, 'Pass', 1101),  -- Ibrahim Ali, Project Management for Tech Projects, Sam Gudenberg
(2405, 114, 'Pass', 1221),  -- Ibrahim Ali, Digital Marketing Strategies, Jane Coldwell
(2405, 115, 'Pass', 1154),  -- Ibrahim Ali, Data Analytics for Business Decisions, Paula Manuella

(2406, 102, 'Pass', 1221),  -- Rebecca Shaw, Web Development Fundamentals, Jane Coldwell
(2406, 105, 'Pass', 1101),  -- Rebecca Shaw, Project Management for Tech Projects, Sam Gudenberg
(2406, 113, 'Pass', 1102),  -- Rebecca Shaw, Blockchain Technology and Its Applications, Tom Lanester
(2406, 114, 'Pass', 1221),  -- Rebecca Shaw, Digital Marketing Strategies, Jane Coldwell

(2327, 103, 'Pass', 1103),  -- George Carter, Entrepreneurship in the Digital Age, Mattew Eromosele
(2327, 104, 'Pass', 1154),  -- George Carter, Database Management Systems, Paula Manuella
(2327, 111, 'Pass', 1216),  -- George Carter, Cybersecurity for Professionals, Elena Augelera
(2327, 112, 'Pass', 1167),  -- George Carter, Machine Learning and AI for Business, Paul Harrison

(2228, 101, 'Pass', 1102),  -- Alice Gomez, Introduction to Data Science, Tom Lanester
(2228, 105, 'Pass', 1101),  -- Alice Gomez, Project Management for Tech Projects, Sam Gudenberg
(2228, 113, 'Pass', 1102),  -- Alice Gomez, Blockchain Technology and Its Applications, Tom Lanester
(2228, 115, 'Pass', 1154),  -- Alice Gomez, Data Analytics for Business Decisions, Paula Manuella

(2409, 102, 'Pass', 1221),  -- Noah Diaz, Web Development Fundamentals, Jane Coldwell
(2409, 105, 'Pass', 1101),  -- Noah Diaz, Project Management for Tech Projects, Sam Gudenberg
(2409, 112, 'Pass', 1167),  -- Noah Diaz, Machine Learning and AI for Business, Paul Harrison
(2409, 113, 'Pass', 1102),  -- Noah Diaz, Blockchain Technology and Its Applications, Tom Lanester

(2400, 104, 'Fail', 1154),  -- Zara Khan, Database Management Systems, Paula Manuella
(2400, 105, 'Fail', 1101),  -- Zara Khan, Project Management for Tech Projects, Sam Gudenberg
(2400, 113, 'Fail', 1102),  -- Zara Khan, Blockchain Technology and Its Applications, Tom Lanester
(2400, 115, 'Fail', 1154),  -- Zara Khan, Data Analytics for Business Decisions, Paula Manuella

(2331, 101, 'Pass', 1102),  -- Lucas Fernandez, Introduction to Data Science, Tom Lanester
(2331, 103, 'Pass', 1103),  -- Lucas Fernandez, Entrepreneurship in the Digital Age, Mattew Eromosele
(2331, 112, 'Pass', 1167),  -- Lucas Fernandez, Machine Learning and AI for Business, Paul Harrison
(2331, 114, 'Pass', 1221),  -- Lucas Fernandez, Digital Marketing Strategies, Jane Coldwell

(2332, 102, 'Pass', 1221),  -- Ella Roberts, Web Development Fundamentals, Jane Coldwell
(2332, 105, 'Fail', 1101),  -- Ella Roberts, Project Management for Tech Projects, Sam Gudenberg
(2332, 114, 'Pass', 1221),  -- Ella Roberts, Digital Marketing Strategies, Jane Coldwell
(2332, 115, 'Fail', 1154),  -- Ella Roberts, Data Analytics for Business Decisions, Paula Manuella

(2413, 102, 'Pass', 1221),  -- Amir Singh, Web Development Fundamentals, Jane Coldwell
(2413, 103, 'Pass', 1103),  -- Amir Singh, Entrepreneurship in the Digital Age, Mattew Eromosele
(2413, 113, 'Fail', 1102),  -- Amir Singh, Blockchain Technology and Its Applications, Tom Lanester
(2413, 115, 'Fail', 1154),  -- Amir Singh, Data Analytics for Business Decisions, Paula Manuella

(2234, 102, 'Pass', 1221),  -- Grace Kim, Web Development Fundamentals, Jane Coldwell
(2234, 104, 'Fail', 1154),  -- Grace Kim, Database Management Systems, Paula Manuella
(2234, 112, 'Pass', 1167),  -- Grace Kim, Machine Learning and AI for Business, Paul Harrison
(2234, 115, 'Fail', 1154),  -- Grace Kim, Data Analytics for Business Decisions, Paula Manuella

(2414, 101, 'Pass', 1102),  -- Leo Martinez, Introduction to Data Science, Tom Lanester
(2414, 105, 'Pass', 1101),  -- Leo Martinez, Project Management for Tech Projects, Sam Gudenberg
(2414, 113, 'Pass', 1102),  -- Leo Martinez, Blockchain Technology and Its Applications, Tom Lanester
(2414, 115, 'Pass', 1154),  -- Leo Martinez, Data Analytics for Business Decisions, Paula Manuella

(2416, 104, 'Fail', 1154),  -- Ava Murphy, Database Management Systems, Paula Manuella
(2416, 105, 'Pass', 1101),  -- Ava Murphy, Project Management for Tech Projects, Sam Gudenberg
(2416, 114, 'Pass', 1221),  -- Ava Murphy, Digital Marketing Strategies, Jane Coldwell
(2416, 115, 'Pass', 1154),  -- Ava Murphy, Data Analytics for Business Decisions, Paula Manuella

(2337, 103, 'Pass', 1103),  -- Oscar Chen, Entrepreneurship in the Digital Age, Mattew Eromosele
(2337, 105, 'Pass', 1101),  -- Oscar Chen, Project Management for Tech Projects, Sam Gudenberg
(2337, 112, 'Pass', 1167),  -- Oscar Chen, Machine Learning and AI for Business, Paul Harrison
(2337, 114, 'Pass', 1221),  -- Oscar Chen, Digital Marketing Strategies, Jane Coldwell

(2338, 101, 'Pass', 1102),  -- Sofia Wang, Introduction to Data Science, Tom Lanester
(2338, 102, 'Pass', 1221),  -- Sofia Wang, Web Development Fundamentals, Jane Coldwell
(2338, 114, 'Pass', 1221),  -- Sofia Wang, Digital Marketing Strategies, Jane Coldwell
(2338, 115, 'Pass', 1154),  -- Sofia Wang, Data Analytics for Business Decisions, Paula Manuella

(2418, 102, 'Pass', 1221),  -- Jaxon Lee, Web Development Fundamentals, Jane Coldwell
(2418, 103, 'Pass', 1103),  -- Jaxon Lee, Entrepreneurship in the Digital Age, Mattew Eromosele
(2418, 111, 'Pass', 1216),  -- Jaxon Lee, Cybersecurity for Professionals, Elena Augelera
(2418, 115, 'Pass', 1154),  -- Jaxon Lee, Data Analytics for Business Decisions, Paula Manuella

(2204, 104, 'Pass', 1154),  -- Amelia Scott, Database Management Systems, Paula Manuella
(2204, 105, 'Pass', 1101),  -- Amelia Scott, Project Management for Tech Projects, Sam Gudenberg
(2204, 111, 'Pass', 1216),  -- Amelia Scott, Cybersecurity for Professionals, Elena Augelera
(2204, 113, 'Pass', 1102);  -- Amelia Scott, Blockchain Technology and Its Applications, Tom Lanester

