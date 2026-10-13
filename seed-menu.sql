insert into public.qr_menu_items (id,name,description,category,price,active,option_groups)
values
('menu-ricebox-reguler','Ricebox Ayam Katsu Reguler','Menu MAMLAH','Ricebox',20000,true,'[]'::jsonb),
('menu-ricebox-hot-lava','Ricebox Ayam Katsu Hot Lava','Menu MAMLAH','Ricebox',21000,true,'[]'::jsonb),
('menu-ricebox-curry-jepang','Ricebox Ayam Katsu Curry Jepang','Menu MAMLAH','Ricebox',25000,true,'[]'::jsonb),
('menu-miebox-reguler','Miebox Ayam Katsu Reguler','Menu MAMLAH','Miebox',22000,true,'[]'::jsonb),
('menu-miebox-hot-lava','Miebox Ayam Katsu Hot Lava','Menu MAMLAH','Miebox',23000,true,'[]'::jsonb),
('menu-pastabox-bolognese','Pastabox Spaghetti Bolognese','Menu MAMLAH','Pastabox',22000,true,'[]'::jsonb),
('menu-pastabox-aglio-olio','Pastabox Spaghetti Aglio Olio','Menu MAMLAH','Pastabox',22000,true,'[]'::jsonb),
('menu-chicken-katsu-bite','Chicken Katsu Bite','Menu MAMLAH','Bites',16000,true,'[]'::jsonb),
('menu-chicken-katsu-next-level','Chicken Katsu Next Level','Menu MAMLAH','Bites',21000,true,'[]'::jsonb),
('menu-es-teh-mamlah','Es Teh Mamlah','Menu MAMLAH','Drink',5000,true,'[]'::jsonb),
('menu-es-teh-lemon','Es Teh Lemon','Menu MAMLAH','Drink',10000,true,'[]'::jsonb),
('menu-es-teh-blackcurrent','Es Teh Blackcurrent','Menu MAMLAH','Drink',10000,true,'[]'::jsonb),
('menu-es-americano','Es Americano','Menu MAMLAH','Drink',10000,true,'[]'::jsonb),
('menu-es-kopi-susu','Es Kopi Susu','Menu MAMLAH','Drink',12000,true,'[]'::jsonb),
('menu-es-kopi-gula-aren','Es Kopi Gula Aren','Menu MAMLAH','Drink',13000,true,'[]'::jsonb),
('menu-mineral-water-330ml','Mineral Water 330ml','Menu MAMLAH','Drink',5000,true,'[]'::jsonb)
on conflict (id) do update set
name=excluded.name,
description=excluded.description,
category=excluded.category,
price=excluded.price,
active=excluded.active,
option_groups=excluded.option_groups,
updated_at=now();
