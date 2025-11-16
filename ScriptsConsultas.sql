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