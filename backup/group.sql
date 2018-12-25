CREATE TABLE "public"."group" (
  "group_guid" varchar(36) COLLATE "pg_catalog"."default" NOT NULL DEFAULT uuid_generate_v4(),
  "name" varchar(20) COLLATE "pg_catalog"."default",
  "value" int4,
  "amount" int4,
  PRIMARY KEY ("group_guid")
)
;

ALTER TABLE "public"."group" 
  OWNER TO "game";

COMMENT ON COLUMN "public"."group"."group_guid" IS '唯一标识';

COMMENT ON COLUMN "public"."group"."name" IS '卡组名称';

COMMENT ON COLUMN "public"."group"."value" IS '分值';

COMMENT ON COLUMN "public"."group"."amount" IS '包含卡数';


INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('e032db2c-a4c1-4bbe-a254-f99679d86897', '与子成说', 3, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('0574ee5b-2d12-47f6-a65b-b05a011396d7', '乘龙归', 3, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('83427a3f-57d4-46b5-88f3-ccc8139fbf3d', '琴心剑魄', 3, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('1cef7187-3ead-471a-8924-8c3be161366e', '云涌昆仑', 3, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('1a109a42-fe7e-4817-af0e-b6d5972e5dce', '焚焰血戮', 3, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('32c49114-6664-4427-8c98-05eb8693a4cc', '故友赠礼', 3, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('18c05f46-7ee1-4314-9782-6a29e29248e2', '陌相逢', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('4af63e29-0e80-4671-9e53-c524596ad665', '幽都灵女', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('8241af9c-684b-4a26-83f5-afcc8a14f61a', '琴川友', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('4f2941b5-135d-4b14-a456-3f3d0dc8c5e4', '望乡', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('ab34a5f5-c468-466e-9b63-967674804124', '永相随', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('27fb5c79-62ff-4ee3-9334-4f0e86bd992e', '无情客', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('9eb68fce-c9d6-463c-82a3-fb395fe7b54b', '芳草心', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('eed55c05-31c0-4b3d-94ad-597212fce552', '共株生', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('58160fa2-6fc7-4cd0-994e-f9b3d8d7d130', '三日遥', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('e4810aae-31ff-4c45-982f-cbb51186c979', '月中生', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('c1fbf538-93fa-4054-8ebd-c2e01c63ef33', '伴长眠', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('130805bc-c106-45f9-a4d3-e7357e9a9862', '仙山眷侣', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('f34c30c9-3ee5-4787-8cc9-84be89109f1d', '蓬莱公主', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('3a39d659-d122-40dc-a6eb-8c1cda632709', '故林栖', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('850c16d3-c0ab-4c0c-adf3-31f20b0003db', '玉京游', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('07dded0e-3a99-4092-8070-d4dd56612f22', '黑衣少侠传', 60, 6);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('ac252ee7-66b7-4051-bdf6-0427d0465d51', '幽夜苍茫', 10, 3);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('f76e4704-5b90-4b3a-b624-9eb7e33e6ae4', '厨房功夫', 10, 3);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('1b580477-149f-40c5-bbc4-2d87d390d2bf', '桃花幻梦', 10, 3);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('5bb872d6-3b13-43c5-9bd4-e4b23ea28ff5', '露草流萤', 10, 3);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('bab4e158-7bfe-4915-9c8e-0bb9dc8b64b4', '芳华如梦', 10, 3);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('f0d16828-e7b9-45a1-b44a-34cfa604e741', '长相忆', 10, 3);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('594c004d-64e2-463b-87d7-889ce9a130a8', '剑主之谊', 10, 3);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('c73becfc-c62b-4414-bef3-b2aea385b677', '温茶相待', 10, 3);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('823c943a-0e3a-4bae-9804-6a36b7b90358', '天墉旧事', 10, 3);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('818df487-dafd-4690-a367-824d495d3f6f', '千年一器', 10, 3);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('56cadf89-18b3-40ee-beeb-580826f562d5', '巫山神女', 20, 4);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('32d36df7-72be-41fa-b1a2-8b4bf93ec468', '蓝衫偃师记', 20, 4);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('9104d7b2-df7e-4b8f-a8a7-fc81965cc85e', '烈山遗族', 20, 4);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('6cdb4aba-f952-4c4a-a74e-172b43ba0e77', '天地熔炉', 20, 4);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('bdb7149d-ffc9-474f-9a45-d03f9d1331b2', '红月', 40, 5);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('5aa73bf2-81b4-4227-9f42-48febd83afb0', '古剑奇谭', 40, 5);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('4135a4e0-a3a5-4240-b7fd-d135f205966a', '春风雨', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('6a685600-7363-4297-b454-1d1b2305ceec', '重山隐', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('24049af4-2a7a-4855-b50f-f8214e304c83', '孤月寒灯', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('86035201-2cb4-49aa-ae72-053220bfa108', '胡不归', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('2dab751e-110a-413f-ac08-d30874963c40', '空留忆', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('55f4e888-1c43-4ab1-98c4-81f7e8a1f23c', '别破军', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('8189e39e-b05b-48bd-b3b2-f26c518bc75b', '古剑剑灵', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('7ee58b1f-806d-498e-8e72-3e4974037fff', '铸剑仙师', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('53981fbc-6e46-4e05-aa88-c889a9a9ed72', '历劫重生', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('0c05580b-9adf-43ff-b4d6-9fd8a84dfcbf', '未成之剑', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('a6bc65f8-d34f-4b1b-9b9b-1c1f373c9589', '榣山遗韵', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('d8692e1d-3a63-4f34-aa1f-dc67694875da', '水虺醉琴', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('5b456637-49c2-4b5e-8c39-5d09d3d599c3', '应龙信物', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('5ff6a67c-c68f-4086-83ca-b0e395d3d8ab', '千古剑灵', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('20bd89da-239d-42e3-90db-be7605afcc08', '剑舞红袖', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('40206a25-9560-421b-acda-c9444a05d00d', '明月青霜', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('0c111734-1fea-4835-b7e7-d5dda0c25124', '幽都巫咸', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('04d5fa75-7d7a-4d82-9258-99c43b95bf47', '醉梦江湖', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('21c468b9-84e1-4230-ad9c-9d9648be2a0b', '栖身之所', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('2b177d6b-7335-43a2-82ea-22a2198efb80', '丹芷长老', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('b375e198-ec54-4b57-a94c-7f908057dee6', '故地重回', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('c0ff30f1-e57e-4418-ad0c-ae81d45f116e', '揽琴独照', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('7a0e95fb-6a19-4c42-8bd6-4b53f6bc7dd3', '太华山人', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('1fcf7957-5b2e-42c2-b294-45dbf796bf54', '严师胜父', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('cd725885-6846-4613-b94f-6c9c5113254e', '待佳期', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('183df32c-c200-4145-a632-cd8861046d2d', '护孤城', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('772fb23d-083c-486b-9838-6ae685c699e6', '永夜寒沉', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('78d93b8b-3a5f-4c77-9dbf-866dd81bcdb9', '天墉掌门', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('dd6d5dc3-5460-40eb-bd32-00ed07bfa53b', '月之殇', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('403f79cf-a6e9-47cb-a48d-e216eec73a67', '廉贞曲', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('6fb09648-2178-492b-b1a2-a1b28bd36bdf', '神女静眠', 4, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('1ff4716f-61e6-4220-a21d-2ca6057a3e2f', '光逐影', 5, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('647eda5a-3796-4ba4-a7ef-c8a755aead7d', '山鬼', 5, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('f796d4be-56b8-46d4-a5ed-3a563a53b828', '比肩行', 5, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('a6a4bd10-3a6c-4b57-bb72-c677cb518ad9', '家传宝贝', 5, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('9896e9d1-777f-4dd1-b6f9-8ecc1a8184c6', '星海天罡', 5, 2);
INSERT INTO "group"("group_guid", "name", "value", "amount") VALUES ('f066609f-4203-4dd2-8f16-b259722f860a', '逸尘', 5, 2);
