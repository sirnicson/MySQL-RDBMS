-- Insert data into Admins table
INSERT INTO Admins (ID, name, email) VALUES 
(1, 'Nicholas Eghagha', 'neghagha@college.edu'),
(2, 'Olawole Ayoba', 'oayoba@college.edu');

-- Insert data into Teachers table
INSERT INTO Teachers (ID, name, email) VALUES 
(1, 'Tom Lanester', 'tlanester@college.edu'),
(2, 'Jane Coldwell', 'jcoldwell@college.edu'),
(3, 'Mattew Eromosele', 'meromosele@college.edu'),
(4, 'Paula Manuella', 'pmanuella@college.edu'),
(5, 'Sam Gudenberg', 'sgudenberg@college.edu'),
(6, 'Elena Augelera', 'eagulera@college.edu'),
(7, 'Paul Harrison', 'pharrison@college.edu');

-- Insert data into Courses table
INSERT INTO Courses (ID, course_name, semester, is_offered, created_by) VALUES 
(101, 'Introduction to Programming', 'Fall', true, 1),
(102, 'Web Development Fundamentals', 'Fall', true, 1),
(103, 'Data Structures and Algorithms', 'Fall', true, 1),
(104, 'Database Management Systems', 'Fall', true, 2),
(105, 'Mobile App Development', 'Fall', true, 2),
(106, 'Cybersecurity Essentials', 'Spring', true, 2),
(107, 'Cloud Computing Concepts', 'Spring', true, 1),
(108, 'Machine Learning Basics', 'Spring', true, 1),
(109, 'Digital Marketing Strategies', 'Spring', true, 2),
(110, 'User Experience Design', 'Spring', true, 2);

-- Insert data into Students table
INSERT INTO Students (ID, name, email, enrollment_year) VALUES 
(1, 'Chukwudu Francis', 'cfrancis@college.edu', 2023),
(2, 'Jane Smith', 'jsmith@college.edu', 2023),
(3, 'Alex Brown', 'abrown@college.edu', 2022),
(4, 'Emma Agundele', 'eagundele@college.edu', 2023),
(5, 'Liam Green', 'lgreen@college.edu', 2024),
(6, 'Olivia Pope', 'opope@college.edu', 2023),
(7, 'Shao Xie', 'sxie@college.edu', 2022),
(8, 'Sophia Alonso', 'salonso@college.edu', 2024),
(9, 'Marcus Germaine', 'mgermaine@college.edu', 2023),
(10, 'Mia Silverstone', 'msilverstone@college.edu', 2024),
(11, 'Lucas Brown', 'lucas.brown@college.edu', 2023),
(12, 'Azra Karayilan', 'akarayilan@college.edu', 2022),
(13, 'Ethan Parker', 'eparker@college.edu', 2023),
(14, 'Mathias Jogurnese', 'mjorgurnese@college.edu', 2023),
(15, 'Henry Ogbayagbon', 'hogbayagbon@college.edu', 2024),
(16, 'Murat Çelik', 'mcelik@college.edu', 2023),
(17, 'James Borabora', 'jborabora@college.edu', 2024),
(18, 'Isabella Zaragozze', 'izaragozze@college.edu', 2022),
(19, 'Benjamin Won Su', 'bwonsu@college.edu', 2023),
(20, 'Charlotte Lime', 'clime@college.edu', 2023);
