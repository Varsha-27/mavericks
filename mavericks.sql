
create table customer(custid integer primary key, name varchar(20),dob date, password varchar(10), address varchar(20));

drop table accountdetails;
create table accountdetails(accountnumber integer primary key, balance double,accounttype varchar(20),rateofinterest double,custid integer,constraint fkey1 foreign key(custid) references customer(custid));

create table bankdetails(branch varchar(20), accountnumber integer , constraint fkey2 foreign key(accountnumber) references accountdetails(accountnumber),custid integer,constraint fkey3 foreign key(custid) references customer(custid));

create table checkqueDepositDetails (amount double, accountnumber integer,constraint fkey4 foreign key(accountnumber) references accountdetails(accountnumber));

create table transaction (dot date, amt double,  accountnumber integer,constraint fkey5 foreign key(accountnumber) references accountdetails(accountnumber));

insert into customer values(1, 'Ram','2002-05-10','passme','Pune');

insert into customer values(2, 'Sam','2003-06-10','apple','Mumbai');

insert into accountdetails values(123489, 8000.90,'savings',8.50,1);
insert into accountdetails values(909908, 70000.34,'current',0.0,2);

insert into bankdetails values('bundgardenroad',123489,1);

insert into bankdetails values('Dadar',909908,2);

insert into checkqueDepositDetails values(90.80,123489);

insert into transaction values('2023-06-10',80000.78,909908);

