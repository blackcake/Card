--查询出所有已完成的配对
--配对的guid和分值
create view v_group_finshed as 
 SELECT t.group_guid,
    k.name,
    avg(k.value) AS value
   FROM (relation t
     JOIN "group" k ON (((t.group_guid)::text = (k.group_guid)::text)))
  WHERE (EXISTS ( SELECT 1
           FROM playing g
          WHERE ((t.card_guid)::text = (g.card_guid)::text)))
  GROUP BY t.group_guid, k.name
 HAVING ((count(*))::numeric = avg(k.amount))


 --查询所有包含已有卡牌，但还未完成的配对
create view v_group_notfinshed as 
 SELECT t.group_guid,
    k.name,
    avg(k.value) AS value
   FROM (relation t
     JOIN "group" k ON (((t.group_guid)::text = (k.group_guid)::text)))
  WHERE (EXISTS ( SELECT 1
           FROM playing g
          WHERE ((t.card_guid)::text = (g.card_guid)::text)))
  GROUP BY t.group_guid, k.name
 HAVING ((count(*))::numeric <> avg(k.amount))