-- ����� first_name, employee_id, department_id, dept_name
SELECT
    E.employee_id,
    E.first_name,
    department_id,
    D.department_name
FROM employees E
NATURAL JOIN departments D
ORDER BY E.employee_id
;

SELECT
    E.employee_id,
    E.first_name,
    department_id,
    D.department_name
FROM employees E
INNER JOIN departments D
USING (department_id) 
ORDER BY E.employee_id
;

SELECT
    E.employee_id,
    E.first_name,
    department_id,
    D.department_name
FROM employees E
INNER JOIN departments D
USING (department_id, manager_id)
ORDER BY E.employee_id
;








-- 1. employees���̺�� departments���̺��� inner join�Ͽ�
--    ���, first_name, last_name, department_id, department_name�� ��ȸ�ϼ���.
SELECT
    E.employee_name,
    E.first_name,
    E.last_name,
    department_id,
    D. department_name
FROM employees E
INNER JOIN jobs J
ORDER BY E.department_id
;

-- 2. employees���̺�� departments���̺��� natural join�Ͽ�
--    ���, first_name, last_name, department_id, department_name�� ��ȸ�ϼ���.
SELECT
    E. employee_id,
    E. first_name,
    E. last_name,
    department_id,
    D. department_name
FROM employees E
NATURAL JOIN departments D
ORDER BY E.employee_id
;


-- 3. employees���̺�� departments���̺��� using���� ����Ͽ�
--    ���, first_name, last_name, department_id, department_name�� ��ȸ�ϼ���.
SELECT
    E. employee_id,
    E. first_name,
    E. last_name,
    department_id,
    D. department_name
FROM employees E
NATURAL JOIN departments D
USING (deptartment_id)
ORDER BY E.employee_id
;

-- 4. employees���̺�� departments���̺�� locations ���̺��� 
--    join�Ͽ� employee_id, first_name, department_name, city�� ��ȸ�ϼ���


-- 5. employees ���̺�� jobs ���̺��� INNER JOIN�Ͽ� 
-- ����� first_name, last_name, job_title�� ��ȸ�ϼ���.


-- 6. employees ���̺�� departments ���̺��� INNER JOIN�Ͽ� 
-- �μ���� �� �μ��� �ִ� �޿����� ��ȸ�ϼ���.
SELECT
    E.department_id,
    department_name,
    MAX(E.salary)
FROM employees E
INNER JOIN departments D
ON E.department_id = D.department_id
GROUP BY E.department_id, D.department_name
ORDER BY E.department_id
;

-- 7. employees ���̺�� jobs ���̺��� INNER JOIN�Ͽ� 
--    ������ ��� �޿��� ���� Ÿ��Ʋ�� ��ȸ�ϼ���.




