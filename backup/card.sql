CREATE TABLE "public"."card" (
  "card_guid" varchar(36) COLLATE "pg_catalog"."default" NOT NULL DEFAULT uuid_generate_v4(),
  "name" varchar(20) COLLATE "pg_catalog"."default",
  "season" varchar(20) COLLATE "pg_catalog"."default",
  "image" varchar(100) COLLATE "pg_catalog"."default",
  "large_image" varchar(100) COLLATE "pg_catalog"."default",
  "value" int4,
  PRIMARY KEY ("card_guid")
)
;

ALTER TABLE "public"."card" 
  OWNER TO "game";

COMMENT ON COLUMN "public"."card"."card_guid" IS '唯一标识';

COMMENT ON COLUMN "public"."card"."name" IS '卡的名称';

COMMENT ON COLUMN "public"."card"."season" IS '所属季节';

COMMENT ON COLUMN "public"."card"."image" IS '图片地址';

COMMENT ON COLUMN "public"."card"."large_image" IS '大图地址';

COMMENT ON COLUMN "public"."card"."value" IS '分值';


INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('7eb73c63-93f6-42f3-b4d8-22bbb5438461', '清和真人', '秋', 'image/card01.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('72fa0da3-456a-4c2f-b03a-4e8ad708f411', '方兰生', '春', 'image/card02.png', 'image/card_large_02.png', 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('1c07e3ef-796e-40fb-ab15-b8e60c910797', '古剑红玉', '夏', 'image/card03.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('87c936c0-8570-49a6-87f5-91d384a3fd52', '露草', '春', 'image/card04.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('eaefb169-a0e3-4519-a821-010c5666de4c', '琴川', '春', 'image/card05.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('19770322-c3d1-4648-bb2f-3aa4d7c15281', '夏夷则', '冬', 'image/card06.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('523b3bb0-a5e9-40d2-b665-3e018cc6f7b1', '陵越', '冬', 'image/card07.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('74338c30-6739-4a40-9713-1b4f66bcb56d', '百里屠苏', '冬', 'image/card08.png', 'image/card_large_08.png', 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('e51872d0-d800-453c-96d3-dcc1ca694da8', '黑龙鳞片', '夏', 'image/card09.png', 'image/card_large_09.png', 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('933598cb-7a61-4a77-99c7-9a515ff207bf', '幽都', '冬', 'image/card10.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('de268836-244f-4bfa-833f-238160743ef7', '百胜刀', '冬', 'image/card11.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('81d872b8-ee5d-4a8e-b140-e51d0472766e', '乐无异', '夏', 'image/card12.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('0469a316-2ce5-4bc8-8aef-a982cdeb114e', '古剑焚寂', '夏', 'image/card13.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('55accadb-13bf-475c-891a-0977003644cd', '兔子抱枕', '秋', 'image/card14.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('fa0a58a7-487c-4451-b1f8-abdb11a731e8', '阿阮', '春', 'image/card15.png', 'image/card_large_15.png', 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('b8d46942-e548-43cf-a9e5-12df42907eb9', '古剑晗光', '冬', 'image/card16.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('1cbcf748-6397-419f-9ef8-98a459fe2317', '华月', '冬', 'image/card17.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('553e850a-312a-4055-97b0-3ff9e06e4950', '闻人羽', '秋', 'image/card18.png', 'image/card_large_18.png', 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('3c6287b6-50ec-47d4-b9c6-4f91d2e517e4', '天墉城', '夏', 'image/card19.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('150c113f-3a2a-4aa3-8dcc-0511384ac9e2', '谢衣', '夏', 'image/card20.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('c7f15e64-cc07-4e5b-8891-497aaf2b54a3', '红玉', '秋', 'image/card21.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('006e1340-363e-48ec-a597-56d60f989654', '青玉司南佩', '春', 'image/card22.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('f550638d-4d9c-4c2f-932c-71f84e2b6f41', '昭明', '春', 'image/card23.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('8cb91e20-e882-400b-b41d-b33ea815e626', '太华山', '冬', 'image/card24.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('b16558f6-0225-4315-b452-bd6e591aac6a', '无名之剑', '秋', 'image/card25.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('f369e39f-03d9-43ca-be5b-69cc57a624ab', '尹千觞', '秋', 'image/card26.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('2ee3a291-1f1a-4f56-83c1-b42e0508f881', '金麒麟', '秋', 'image/card27.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('53733760-4849-48bb-a680-47a1b8517556', '沈曦', '春', 'image/card28.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('d04bf2fd-af59-4580-a956-cc1b5ebc73cf', '凤来', '春', 'image/card29.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('e65d34f0-41a1-441c-9c68-c91353fcd11f', '焦炭', '夏', 'image/card30.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('2616be97-f756-41df-8cfc-1f83dfa0ed7a', '神女墓', '冬', 'image/card31.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('6b402691-4f43-46de-a301-f00187169f41', '百草谷', '夏', 'image/card32.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('679dd2d0-14f3-44c7-a73b-aeaa389608fd', '巽芳', '春', 'image/card33.png', 'image/card_large_33.png', 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('91b19b65-4676-4882-987f-c4ed084f86be', '桃花谷', '春', 'image/card34.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('5d2b3e39-2195-4597-97aa-0e11c883e23c', '蓬莱', '夏', 'image/card35.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('cf1e1bb8-683c-4cb6-99b6-77171361568d', '青玉坛', '秋', 'image/card36.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('f7ef8bdb-3451-4b7f-98a3-46b6f3502721', '静水湖', '春', 'image/card37.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('e98417f9-4fea-4d31-9803-9eceb86dece4', '风晴雪', '春', 'image/card38.png', 'image/card_large_38.png', 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('51bfb387-da18-4b7c-8e6e-eafe8ed0a50d', '禺期', '夏', 'image/card39.png', 'image/card_large_39.png', 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('49da7fe7-2c40-4a71-9c69-70b9773e0dae', '通天之器', '秋', 'image/card40.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('57723d78-1971-4f10-a010-da02658824b4', '襄铃', '夏', 'image/card41.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('c166e0a5-cd87-46ad-b5e2-ef7b0a955af1', '紫榕林', '秋', 'image/card42.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('fee1592e-50c0-4361-8372-93a86baf12a7', '华月箜篌', '冬', 'image/card43.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('9d445d62-4eae-44e8-b439-7b42af242deb', '忘川', '冬', 'image/card44.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('fc2b1e9c-87aa-43f3-b976-20cb13d0a2c5', '长安', '春', 'image/card45.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('f10f2d74-4672-4f0a-822b-186b86bebab3', '巫山', '夏', 'image/card46.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('1e062582-463b-4fa6-9cdb-ba02b31110af', '流月城', '冬', 'image/card47.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('353762fd-3093-440c-b502-2b764589914e', '欧阳少恭', '秋', 'image/card48.png', 'image/card_large_48.png', 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('eb8e2f21-5337-4836-9d7e-1b26992f49f1', '悭庾', '夏', 'image/card49.png', 'image/card_large_49.png', 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('4cb21a85-ddd6-41f3-b7e2-fca81717b8a6', '榣山', '秋', 'image/card50.png', NULL, 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('ec082599-087a-408a-a964-91c411d1fdc5', '安陆', '秋', 'image/card51.png', 'image/card_large_51.png', 2);
INSERT INTO "card"("card_guid", "name", "season", "image", "large_image", "value") VALUES ('96c6759a-a48e-45c6-838c-32e74f50e1bf', '沈夜', '冬', 'image/card52.png', NULL, 2);
