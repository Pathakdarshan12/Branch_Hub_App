use python_ca;
create table employee(
    emp_id int primary key ,
    emp_name varchar(20),
    emp_last varchar(20),
    emp_sex varchar(1),
    emp_call varchar(11),
    emp_birth_day date,
    branch_id int,
    salary int
);
create table branch(
    branch_id int primary key ,
    branch_name varchar(20),
    branch_call varchar(11),
    branch_address varchar(30),
    branch_password int,
    mng_id int ,
    foreign key (mng_id) references employee(emp_id) on delete set null
);
create table client(
    client_id int primary key ,
    client_name varchar(20),
    client_last varchar(20),
    client_call varchar(11),
    client_address varchar(30)

);
create table raw_material(
    rm_id int primary key ,
    rm_name varchar(20),
    rm_type varchar(20)
);

create table product(
    product_id int primary key ,
    product_name varchar(20),
    product_amount int
);
alter table product change product_amount Product_price int;

create table sell(
    sell_id int primary key,
    branch_id int,
    client_id int,
    product_id int,
    sell_amount int,
    sell_price int,
    date_ date,
    time_ time,
    foreign key (branch_id) references branch(branch_id) on delete set null ,
    foreign key (client_id) references client(client_id) on delete set null ,
    foreign key (product_id) references product(product_id) on delete set null
);
create table buy(
    buy_id int primary key, #change
    branch_id int,
    client_id int,
    rm_id int,
    buy_amount int,
    buy_price int,
    buy_date date,
    buy_time time,
    foreign key (branch_id) references branch(branch_id) on delete set null ,
    foreign key (client_id) references client(client_id) on delete set null ,
    foreign key (rm_id) references raw_material(rm_id) on delete set null
);

create table rm_for_branch(
    rm_id int ,
    branch_id int,
    amount int,
    primary key (rm_id,branch_id),
    foreign key (rm_id) references raw_material(rm_id) on delete cascade ,
    foreign key (branch_id) references branch(branch_id) on delete cascade

);

create table pr_for_branch(
    pr_id int,
    branch_id int,
    amount int,
    primary key (pr_id,branch_id),
    foreign key (pr_id) references product(product_id) on delete cascade ,
    foreign key (branch_id) references branch(branch_id) on delete cascade
);
