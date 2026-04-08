## 문제 1: 테이블 생성하기 (CREATE TABLE)
> attendance 테이블은 중복된 데이터가 쌓이는 구조이다. 중복된 데이터는 어떤 컬럼인가?

닉네임 테이블이 중복으로 쌓인다.

> attendance 테이블에서 중복을 제거하기 위해 crew 테이블을 만들려고 한다. 어떻게 구성해 볼 수 있을까?

crew_id와 nickname을 하나의 테이블로 갖고, attendance에서 crew_id를 외래키로 갖는 구조로 생각해 볼 수 있다.

> crew 테이블에 들어가야 할 크루들의 정보는 어떻게 추출할까? (hint: DISTINCT)
 
SELECT distinct crew_id, nickname FROM attendance;

> 최종적으로 crew 테이블 생성:

CREATE TABLE CREW (
    crew_id INT NOT NULL AUTO_INCREMENT,
    nickname VARCHAR(50) NOT NULL,
    PRIMARY KEY (crew_id)
);

> attendance 테이블에서 크루 정보를 추출해서 crew 테이블에 삽입하기:

INSERT INTO CREW (crew_id, nickname)
    SELECT distinct crew_id, nickname
    FROM attendance;

## 문제 2: 테이블 컬럼 삭제하기 (ALTER TABLE)

> crew 테이블을 만들고 중복을 제거했다. attendance에서 불필요해지는 컬럼은?

nickname 컬럼이 불필요해진다. 이미 crew_id 만으로 닉네임을 포함한 크루의 정보를 나타낼 수 있기 때문이다.

> 컬럼을 삭제하려면 어떻게 해야 하는가?

ALTER TABLE attendance DROP COLUMN nickname;

## 문제 3: 외래키 설정하기

> 만약에 crew 테이블에는 crew_id가 12번인 크루가 존재하지 않지만, attendance 테이블에는 여전히 crew_id가 12번인 크루가 존재한다면?

ATTENDANCE 테이블에 crew_id를 crew의 crew_id로 외래키 설정하면 두 테이블 간 불일치 문제를 해결할 수 있다.

## 문제 4: 유니크 키 설정

ALTER TABLE crew ADD UNIQUE (nickname); 


## 문제 5: 크루 닉네임 검색하기 (LIKE)

SELECT * FROM crew WHERE nickname LIKE '디%';

## 문제 6: 출석 기록 확인하기 (SELECT + WHERE)

SELECT * 
    FROM attendance a 
    JOIN crew c 
    ON a.crew_id = c.crew_id 
    WHERE c.nickname = '어셔'
    AND a.attendance_date = '2025-03-06'
    AND a.start_time < '10:00:00'; 

## 문제 7: 누락된 출석 기록 추가 (INSERT)

INSERT INTO attendance(crew_id, attendance_date, start_time, end_time)
SELECT crew_id, '2025-03-06', '09:31', '18:01' FROM crew c WHERE c.nickname = '어셔';

## 문제 8: 잘못된 출석 기록 수정 (UPDATE)

UPDATE attendance
    SET start_time = '10:00'
    WHERE crew_id IN (
    SELECT crew_id
    FROM crew
    WHERE nickname = '주니'
);

## 문제 9: 허위 출석 기록 삭제 (DELETE)

DELETE FROM attendance.a
    WHERE a.crew_id IN (
        SELECT c.crew_id
        FROM crew c
        WHERE nickname = '아론')
    AND attendance_date = '2025-03-12';

## 문제 10: 출석 정보 조회하기 (JOIN)

SELECT c.nickname, a.attendance_date, a.start_time, a.end_time
    FROM attendance a
    JOIN crew c ON c.crew_id = a.crew_id; 

## 문제 11: nickname으로 쿼리 처리하기 (서브 쿼리)

SELECT a.attendance_date, a.start_time, a.end_time
    FROM attendance a
    WHERE a.crew_id IN (
        SELECT crew_id
        FROM crew
        WHERE nickname = '주니');

## 문제 12: 가장 늦게 하교한 크루 찾기
SELECT c.nickname, a.end_time
    FROM attendance a
    JOIN crew c ON c.crew_id = a.crew_id
    WHERE a.attendance_date = '2025-03-05'
    AND a.end_time = (
        SELECT MAX(end_time)
        FROM attendance
        WHERE attendance_date = '2025-03-05');

## 문제 13: 크루별로 '기록된' 날짜 수 조회

SELECT crew_id, COUNT(*)
    FROM ATTENDANCE
    GROUP BY crew_id;

## 문제 14: 크루별로 등교 기록이 있는(start_time IS NOT NULL) 날짜 수 조회

SELECT crew_id, COUNT(*)
    FROM ATTENDANCE
    WHERE start_time IS NOT NULL
    GROUP BY crew_id;

## 문제 15: 날짜별로 등교한 크루 수 조회

SELECT attendance_date, COUNT(*)
    FROM attendance
    GROUP BY attendance_date

## 문제 16: 크루별 가장 빠른 등교 시각(MIN)과 가장 늦은 등교 시각(MAX)

SELECT crew_id, MIN(start_time), MAX(start_time)
    FROM attendance
    GROUP BY crew_id;