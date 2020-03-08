

create table member(
    id varchar2(20),
    pw varchar2(20),
    name varchar2(20),
    phone varchar2(20)
);

insert into member(id, pw, name, phone) values('abc','123','홍길동','010-1234-5678');
insert into member(id, pw, name, phone) values('def','456','홍길순','010-9012-3456');
insert into member(id, pw, name, phone) values('ghi','789','홍길자','010-7890-1234');
insert into member(id, pw, name, phone) values('ghi','234','홍길목','010-5678-9012');