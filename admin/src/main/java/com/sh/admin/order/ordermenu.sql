use ssgtowndb;
select *
from tbl_order
order by order_date desc ;

select *
from tbl_orderitem join tbl_item on tbl_orderitem.item_id = tbl_item.item_id
where order_id=1;

update tbl_order
set order_status='주문취소'
where order_id=6;

select tbl_order.order_id, member_id, order_date, sum_price, order_status, track_number, shipment_date, order_item_id,tbl_order.order_id, item_id, item_quantity, order_item_price
from tbl_order join tbl_orderitem on tbl_order.order_id = tbl_orderitem.order_id
where tbl_order.order_id=3 ;

select *
from tbl_orderitem
where order_id=1;

select item_id, sale_price
from tbl_item
where sale_status !='품절';

select *
from tbl_order;

select *
from tbl_order join ssgtowndb.tbl_orderitem t on tbl_order.order_id = t.order_id;

select sum(order_item_price)
from tbl_orderitem
where order_id=7;

select sale_price
from tbl_item
where item_id=1;

select *
from tbl_orderitem
where order_id=6;

select *
from tbl_order;

insert into tbl_order(member_id, order_date, sum_price, order_status, track_number, shipment_date )
values ('johndoe123','2023-12-17 21:18:20',78000,'주문요청',null,null);

update tbl_order
set sum_price = (select sum(order_item_price)
                 from tbl_orderitem
                 where order_id=15)
where order_id=15;

select sum(order_item_price)
from tbl_orderitem
where order_id=15;

insert into tbl_orderitem( order_id, item_id, item_quantity, order_item_price)
values (15, 5,2,
        (select sale_price
        from tbl_item
        where item_id=5
        )*2);

insert into tbl_orderitem( order_id, item_id, item_quantity, order_item_price)
values (15, 21,2,(select sale_price
                from tbl_item
                where item_id=21
               )*2);

insert into tbl_orderitem( order_id, item_id, item_quantity, order_item_price)
values (15, 20,1,(select sale_price
                from tbl_item
                where item_id=20
               )*1);

insert into tbl_orderitem( order_id, item_id, item_quantity, order_item_price)
values (15, 27,1,(select sale_price
                from tbl_item
                where item_id=27
               )*1);

# 위에는 오더넘버1, 아래는 오더넘버2
insert into tbl_orderitem( order_id, item_id, item_quantity, order_item_price)
values (2, 1,1,39000);

insert into tbl_orderitem( order_id, item_id, item_quantity, order_item_price)
values (2, 2,3,35000*3);

insert into tbl_orderitem( order_id, item_id, item_quantity, order_item_price)
values (2, 6,1,12000);

select *
from tbl_member;

insert into tbl_member(member_id, member_name, member_gender, member_birth, member_address, member_email, created_at, member_bank, member_account)
values ('sinsa', '신사임당', 'F', '1485-05-15', '조선', 'sinsa@example.com', '2024-06-25 10:15:00', 'BankB', '9876546');


insert into tbl_member(member_id, member_name, member_gender, member_birth, member_address, member_email, created_at, member_bank, member_account)
values ('honggd', '홍길동','M','1943-02-24','전라도 장성현 아차곡','honggd@naver.com',LOCALTIME,'11579895','N');

insert into tbl_member(member_id, member_name, member_gender, member_birth, member_address, member_email, created_at, member_bank, member_account)
values ('gyarados', '갸라도스','M','2004-07-24','태초마을 갸라도스','gyarados@naver.com',LOCALTIME,'태초EOD',654651358468);

select *
from tbl_orderitem
where order_id=1;