create database friday_food;
use friday_food;
create table food(
	code			int			primary key,
    name			varchar(50) not null,
    supportpereat 	double,
    calory 			double,
    carbo 			double,
    protein 		double,
    fat 			double,
    sugar 			double,
    natrium 		double,
    chole 			double,
    fattyacid 		double,
    transfat 		double,
    maker 			varchar(100),
    material 		varchar(500),
    img 			varchar(100), 
    allergy 		varchar(50)
);
select * from food;