-- 트랜잭션
CREATE TABLE student (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    age NUMBER
);


INSERT INTO student VALUES (1, '김철수', 15);
INSERT INTO student VALUES (2, '홍길동', 16);

SELECT * FROM student;

COMMIT; --영구적으로 써줘야 함. 그래야 진짜 DB에 저장됨

INSERT INTO student VALUES (3, '도우너', 12);

ROLLBACK;

DELETE FROM student;
TRUNCATE TABLE student; --위험함! 데이터 값들만 지우고, 틀은 둠

--계좌 이체
UPDATE tb_account
SET balance = balance + 5000
WHERE id = '김철수';

COMMIT; --여기서 커밋해버리면 안됨. 

UPDATE tb_account
SET balance = balance - 5000
WHERE id = '박영희';

COMMIT; --여기서 커밋해야 함. 2개가 성공했을 때, 커밋되어야 한다.
--만약 한개라도 실패한 것이 있다면, 롤백되어야 한다.

