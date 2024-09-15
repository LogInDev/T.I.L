## CREATE

>`create table 테이블명`
>`(컬럼명 컬럼 타입, ...)`

```sql
create table emp93
( empno number(10),
  ename varchar2(10), --영문은 10자리 한글은5자리까지 가능 
  sal number(10,2),    --소수점 둘째자리까지 가능
  hiredate date);

insert into emp93(empno, ename, sal, hiredate)
values(7788, 'scott', 3000, to_date('81/12/21', 'RR/MM/DD'));
```

>※ 데이터 유형 3가지
>1. 문자형 : `varchar2`
>2. 숫자형 : `number`
>3. 날짜형 :  `date`


---
## 임시 테이블 생성 - CREATE GLOBAL TEMPORAY TABLE

> 테이블의 기능과 역할은 다 하지만 옵션에 따라 테이블 구조는 그대로 있지만, 데이터를 사라지게함.
> - `on commit delete rows` : `commit`을 하면 데이터가 사라짐. 
> - `on commit preserve rows` : 세션을 종료했을 때 데이터는 사라짐.

```sql
create global temporary table emp37
(empno number(10),
ename varchar2(10),
sal number(10))
on commit delete rows;   -- commit 하면 데이터 지우게 설정

insert into emp37 values(1111, 'scot', 3000);
insert into emp37 values(2222, 'smith',4000);

select * from emp37;
```
![](🗂️sql/oracle/img/sql_query200/chapter9/9-1.png)

```sql
commit;

select * from emp37;
```
![](☕️java/img/다형성활용/9-2.png)

```sql
create global temporary table emp94
(empno number(10),
ename varchar(10),
sal number(10)) 
on commit preserve rows;    -- 세션이 종료되었을 때 데이터가 사라지게 설정.
```

