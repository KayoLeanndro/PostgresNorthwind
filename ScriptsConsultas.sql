--Utilização do Upper para busca de mais de um pais no 'IN'.
select c.company_name, c.contact_name, c.city, c.country    
from customers c
where upper(c.country) in ('MEXICO', 'UK')
order by c.country desc;
-----------------------------------------------------------

--Produtos que tem menos de 10 unidades por estoque ou estão descontinuados.
select * from products p 
where p.category_id = 1
and (p.units_in_stock < 10 or p.discontinued = 1);

-----------------------------------------------------------

--Utilizando o alias(as).
select e.title as titulo_funcionario
from employees e  
where upper(e.country) in ('USA');

-----------------------------------------------------------

--Utilizando concatenação na tabela de employees
select concat(e.first_name, ' ', e.last_name)
from employees e;

-----------------------------------------------------------

--Utilizando a concatenação na tabela customers
select concat(company_name ,'(',c.city ,')' )
from customers c;

-----------------------------------------------------------
--Utilização do case when para a verificação e amostragem de dados

select order_id, freight as frete, 
--Criacao de nova coluna com o case 
case when freight < 50 then 'Baixo'
when freight >= 50
and freight < 100 then 'Medio'
else 'Alto' end as frete_nome
from orders
order by order_id asc;

-----------------------------------------------------------
--Utiliza case when com o extract year from age para buscar os funcionarios que tem mais de 5 anos de empresa
select employee_id, concat(e.first_name, ' ', e.last_name), e.hire_date,
case when extract(year from age('1998-01-01'::date, hire_date)) >= 5 then 'Senior'
else 'Junior'end as level
from employees e;

-----------------------------------------------------------
--Utiliza o Limit para limitar a quantidade de registros
select * from employees e limit 5;

--Utiliza o random para que nao venham os mesmos 5 registros
select * from employees e order by random() limit 5;

-----------------------------------------------------------

--Utilizando o NULL e o not NULL para verificar campo especifico em branco
select * from employees e where e.reports_to is not null;

select * from employees e where e.reports_to is null;

-----------------------------------------------------------


