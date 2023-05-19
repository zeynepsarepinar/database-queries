create table client_master
(
client_no varchar(6) not null,
name varchar(20) not null,
address1 varchar(30) null,
address2 varchar(30) null,
city varchar(15) not null,
state varchar(15) not null,
pincode decimal(6) not null,
bal_due decimal(10,2) not null,
)

create table product_master
(
product_no varchar(6) primary key check (product_no like 'P%'),
descripion varchar not null,
profit_percent decimal not null,
unit_measure varchar not null,
qty_on_hand int not null,
reoder_lvlnumber int not null,
sell_price int not null,
cost_price int not null,
)

create table salesman_master
(
salesman_no varchar(6) primary key  check (salesman_no like 's%'),
sal_name varchar(20) not null,
address varchar not null,
city varchar(20) null,
state varchar(20) null,
pincode decimal(6) null,
sal_amt decimal(8,2) not null,
tgt_to_get decimal(6,2) not null,
ytd_sales decimal(6,2) not null,
remarks varchar(30) null,
constraint chk_salesman check (sal_amt !=0 and tgt_to_get !=0 and ytd_sales !=0)
)

create table sales_order
(
s_order_no varchar(6) primary key,
s_order_date date,
constraint chk_order_no check (left(s_order_no,1) = '0'),
client_no varchar(25),
dely_add varchar(6),
salesman_no varchar(6) foreign key references salesman_master,
dely_type char(1) default 'f',
billed_yn char(1) ,
dely_date date, 
order_status varchar(10),
constraint chk_type check(dely_type in ('p','f')),
constraint chk_date check(dely_date > s_order_date),
constraint chk_status check(order_status in ('in process', 'fulfilled', 'back order','canceled'))
)

create table sales_order_details
(
s_order_no varchar(6) foreign key references sales_order,
product_no varchar(6) foreign key references product_master,
qty_order decimal(8),
qty_disp decimal(8),
product_rate decimal(10,2),
)






