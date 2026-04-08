CREATE TABLE attendance (
  attendance_id INT NOT NULL AUTO_INCREMENT,
  crew_id INT NOT NULL,
  nickname VARCHAR(50) NOT NULL,
  attendance_date DATE NOT NULL,
  start_time TIME,
  end_time TIME,
  PRIMARY KEY (attendance_id)
);

INSERT INTO attendance (crew_id, nickname, attendance_date, start_time, end_time) VALUES

  -- 검프(crew_id=1)
  (1, '검프', '2025-03-04', '09:45', '18:10'),
  (1, '검프', '2025-03-05', '09:50', '18:05'),
  (1, '검프', '2025-03-06', '09:59', '18:02'),
  (1, '검프', '2025-03-07', '10:00', '18:05'),
  (1, '검프', '2025-03-10', '12:55', '18:10'),
  (1, '검프', '2025-03-11', '09:58', '18:03'),
  (1, '검프', '2025-03-12', '09:55', '18:05'),

  -- 구구(crew_id=2)
  (2, '구구', '2025-03-04', '10:01', '18:01'),
  (2, '구구', '2025-03-05', '09:59', '18:00'),
  (2, '구구', '2025-03-06', '09:58', '17:30'),
  (2, '구구', '2025-03-07', '10:10', '18:00'),
  (2, '구구', '2025-03-11', '09:59', '18:01'),
  (2, '구구', '2025-03-12', '10:02', '18:10'),

  -- 네오(crew_id=3)
  (3, '네오', '2025-03-04', '09:59', '18:00'),
  (3, '네오', '2025-03-05', '10:03', '18:15'),
  (3, '네오', '2025-03-07', '10:00', '17:50'),
  (3, '네오', '2025-03-10', '13:05', '18:10'),
  (3, '네오', '2025-03-12', '09:55', '18:00'),

  -- 브라운(crew_id=4)
  (4, '브라운', '2025-03-04', '09:59', '18:00'),
  (4, '브라운', '2025-03-05', '09:59', '18:00'),
  (4, '브라운', '2025-03-06', '10:00', '18:00'),
  (4, '브라운', '2025-03-07', '10:00', '18:00'),
  (4, '브라운', '2025-03-10', '13:00', '18:00'),
  (4, '브라운', '2025-03-11', '09:59', '18:00'),
  (4, '브라운', '2025-03-12', '09:59', '18:00'),

  -- 브리(crew_id=5)
  (5, '브리', '2025-03-04', '10:20', '18:10'),
  (5, '브리', '2025-03-05', '09:58', '18:02'),
  (5, '브리', '2025-03-06', '09:59', '18:00'),
  (5, '브리', '2025-03-07', '10:02', '18:00'),
  (5, '브리', '2025-03-11', '09:55', '18:00'),
  (5, '브리', '2025-03-12', '09:57', '18:05'),

  -- 포비(crew_id=6)
  (6, '포비', '2025-03-04', '10:15', '17:58'),
  (6, '포비', '2025-03-05', '10:05', '18:05'),
  (6, '포비', '2025-03-10', '13:10', '18:10'),
  (6, '포비', '2025-03-11', '09:52', '18:01'),
  (6, '포비', '2025-03-12', '09:59', '18:00'),

  -- 워니(crew_id=7)
  (7, '워니', '2025-03-04', '10:10', '18:10'),
  (7, '워니', '2025-03-05', '09:50', '18:02'),
  (7, '워니', '2025-03-10', '12:59', '18:05'),
  (7, '워니', '2025-03-12', '10:05', '17:00'),

  -- 리사(crew_id=8)
  (8, '리사', '2025-03-04', '09:55', '18:00'),
  (8, '리사', '2025-03-05', '10:01', '18:03'),
  (8, '리사', '2025-03-06', '10:10', '17:40'),
  (8, '리사', '2025-03-07', '10:02', '18:05'),
  (8, '리사', '2025-03-10', '13:02', '18:00'),
  (8, '리사', '2025-03-11', '10:05', '18:10'),
  (8, '리사', '2025-03-12', '10:03', '18:00'),

  -- 제임스(crew_id=9)
  (9, '제임스', '2025-03-04', '09:55', '18:00'),
  (9, '제임스', '2025-03-05', '09:59', '18:00'),
  (9, '제임스', '2025-03-06', '09:59', '18:10'),
  (9, '제임스', '2025-03-07', '10:05', '18:00'),
  (9, '제임스', '2025-03-10', '12:59', '17:50'),
  (9, '제임스', '2025-03-11', '09:55', '18:00'),
  (9, '제임스', '2025-03-12', '10:01', '18:00'),

  -- 류시(crew_id=10)
  (10, '류시', '2025-03-04', '10:04', '18:00'),
  (10, '류시', '2025-03-05', '10:02', '18:02'),
  (10, '류시', '2025-03-06', '09:45', '18:05'),
  (10, '류시', '2025-03-07', '10:10', '18:00'),
  (10, '류시', '2025-03-10', '13:03', '17:40'),
  (10, '류시', '2025-03-11', '09:57', '18:10'),
  (10, '류시', '2025-03-12', '09:59', '17:30'),

  -- 디노(crew_id=11)
  (11, '디노', '2025-03-04', '09:59', '18:00'),
  (11, '디노', '2025-03-05', '10:10', '18:00'),
  (11, '디노', '2025-03-06', '09:57', '18:05'),
  (11, '디노', '2025-03-07', '10:00', '18:03'),
  (11, '디노', '2025-03-10', '12:57', '18:00'),
  (11, '디노', '2025-03-11', '09:55', '18:00'),
  (11, '디노', '2025-03-12', '10:03', '18:05'),

  -- 시지프(crew_id=12)
  (12, '시지프', '2025-03-04', '09:52', '18:05'),
  (12, '시지프', '2025-03-05', '09:55', '18:00'),
  (12, '시지프', '2025-03-06', '10:15', '18:00'),
  (12, '시지프', '2025-03-07', '10:03', '17:59'),
  (12, '시지프', '2025-03-10', '12:58', '18:10'),
  (12, '시지프', '2025-03-11', '09:55', '18:00'),
  (12, '시지프', '2025-03-12', '10:10', '18:10');

  SELECT DISTINCT CREW_ID, NICKNAME FROM ATTENDANCE;

  CREATE TABLE CREW (
    crew_id INT NOT NULL AUTO_INCREMENT,
    nickname VARCHAR(50) NOT NULL,
    PRIMARY KEY (crew_id)
);

INSERT INTO CREW (crew_id, nickname)
    SELECT distinct crew_id, nickname
    FROM attendance;

SELECT * FROM CREW;

ALTER TABLE attendance DROP COLUMN nickname;

SELECT * FROM attendance;

ALTER TABLE crew ADD UNIQUE (nickname);

SELECT * FROM crew WHERE nickname LIKE '디%';

SELECT * FROM attendance a JOIN crew c ON a.crew_id = c.crew_id WHERE c.nickname = '어셔';


SELECT *
    FROM attendance a
    JOIN crew c
    ON a.crew_id = c.crew_id
    WHERE c.nickname = '어셔'
    AND a.attendance_date = '2025-03-06'
    AND a.start_time < '10:00:00';

INSERT INTO crew (crew_id, nickname) VALUES (13, '어셔');

INSERT INTO attendance(crew_id, attendance_date, start_time, end_time)
SELECT crew_id, '2025-03-06', '09:31', '18:01' FROM crew c WHERE c.nickname = '어셔';

SELECT * FROM attendance;


INSERT INTO crew (crew_id, nickname) VALUES (14, '주니');

INSERT INTO attendance VALUES
(77, 14, '2025-03-12', '10:05', '18:05');

UPDATE attendance
  SET start_time = '10:00'
  WHERE crew_id IN (
  SELECT crew_id
  FROM crew
  WHERE nickname = '주니'
);

INSERT INTO crew (crew_id, nickname) VALUES (15, '아론');
INSERT INTO attendance VALUES
(78, 15, '2025-03-12', '10:05', '18:05');

SELECT * from attendance;

DELETE FROM attendance a
    WHERE a.crew_id IN (
        SELECT c.crew_id
        FROM crew c
        WHERE nickname = '아론')
    AND attendance_date = '2025-03-12';

SELECT * from attendance;

SELECT c.nickname, a.attendance_date, a.start_time, a.end_time
    FROM attendance a
    JOIN crew c ON c.crew_id = a.crew_id;

SELECT a.attendance_date, a.start_time, a.end_time
FROM attendance a
WHERE a.crew_id IN (
    SELECT crew_id
    FROM crew
    WHERE nickname = '주니');


SELECT c.nickname, a.end_time
    FROM attendance a
    JOIN crew c ON c.crew_id = a.crew_id
    WHERE a.attendance_date = '2025-03-05'
    AND a.end_time = (
        SELECT MAX(end_time)
        FROM attendance
        WHERE attendance_date = '2025-03-05');

SELECT crew_id, COUNT(*)
    FROM ATTENDANCE
    GROUP BY crew_id;

SELECT crew_id, COUNT(*)
    FROM ATTENDANCE
    WHERE start_time IS NOT NULL
    GROUP BY crew_id;

SELECT attendance_date, COUNT(*)
    FROM attendance
    GROUP BY attendance_date;

SELECT crew_id, MIN(start_time), MAX(start_time)
    FROM attendance
    GROUP BY crew_id;