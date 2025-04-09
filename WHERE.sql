# Where 

SELECT
*
from Teste.Items
where quantity = 1;

SELECT
*
from Teste.Customers
where state = "Bahia" and email is not null;

SELECT
*
from Teste.Customers
where (state = "Bahia" or state  = "Rio Grande do Sul") and email is not null;


