-- Ʈ�����
CREATE TABLE student (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    age NUMBER
);


INSERT INTO student VALUES (1, '��ö��', 15);
INSERT INTO student VALUES (2, 'ȫ�浿', 16);

SELECT * FROM student;

COMMIT; --���������� ����� ��. �׷��� ��¥ DB�� �����

INSERT INTO student VALUES (3, '�����', 12);

ROLLBACK;

DELETE FROM student;
TRUNCATE TABLE student; --������! ������ ���鸸 �����, Ʋ�� ��

--���� ��ü
UPDATE tb_account
SET balance = balance + 5000
WHERE id = '��ö��';

COMMIT; --���⼭ Ŀ���ع����� �ȵ�. 

UPDATE tb_account
SET balance = balance - 5000
WHERE id = '�ڿ���';

COMMIT; --���⼭ Ŀ���ؾ� ��. 2���� �������� ��, Ŀ�ԵǾ�� �Ѵ�.
--���� �Ѱ��� ������ ���� �ִٸ�, �ѹ�Ǿ�� �Ѵ�.

