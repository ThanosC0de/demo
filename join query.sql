CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

INSERT INTO Departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Marketing');

select * from departments;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100),
    DeptID INT,
    Salary DECIMAL(10,2),
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

INSERT INTO Employees VALUES
(101, 'Alice', 2, 70000),
(102, 'Bob', 1, 50000),
(103, 'Charlie', 2, 80000),
(104, 'Diana', 3, 60000),
(105, 'Eve', NULL, 45000);

select * from employees;

-- TYPE JOIN --
-- LEFT JOIN
-- RIGHT JOIN 
-- INNER JOIN
-- FULL OUTER JOIN
-- SELF JOIN
-- CROSS JOIN

-- INNER JOIN 
/*
select * from t1
(any) join t2
on t1.c1 = t2.c1;
*/

-- inner join 
-- return matching records from tabel based on common colmn

select * from employees
inner join departments
on employees.DeptID = departments.DeptID;

-- using alias

select * from employees e 
inner join departments d
on e.DeptID = d.DeptID;

-- left join

select * from employees e 
left join departments d
on e.DeptID = d.DeptID;

-- right join

select * from employees e 
right join departments d
on e.DeptID = d.DeptID;

-- full outer join

select * from employees e 
left join departments d
on e.DeptID = d.DeptID
union
select * from employees e 
right join departments d
on e.DeptID = d.DeptID;

-- self join

select * from departments a join
departments b 
on a.DeptId = b.DeptID;

-- cross  join

select * from employees e
cross join departments d;	

select e.EmpID, e.Salary,d.deptname
from employees e
inner join departments d
on e.DeptID = d.DeptID
order by e.salary desc
limit 1,1;

-- window function 
-- row number - uniq