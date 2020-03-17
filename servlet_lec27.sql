create table mvc_board(
    bid number(4) primary key,
    bname varchar2(20),
    btitle varchar2(100),
    bcontent varchar2(300),
    bdate date default sysdate,
    bhit number(4) default 0,
    bgroup number(4),
    bstep number(4),
    bindent number(4)
);

create sequence mvc_board_seq;

insert into mvc_board(bid, bname, btitle, bcontent, bhit, bgroup, bstep, bindent)
values(mvc_board_seq.nextval, 'abcd', 'is title', 'is content', 0, mvc_board_seq.currval, 0, 0);

select * from mvc_board;
commit;