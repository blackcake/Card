CREATE TABLE "public"."playing" (
  "play_guid" varchar(36) COLLATE "pg_catalog"."default" NOT NULL DEFAULT uuid_generate_v4(),
  "userid" varchar(36) COLLATE "pg_catalog"."default",
  "card_guid" varchar(36) COLLATE "pg_catalog"."default",
  "order" int4,
  PRIMARY KEY ("play_guid")
)
;

ALTER TABLE "public"."playing" 
  OWNER TO "game";

COMMENT ON COLUMN "public"."playing"."play_guid" IS '出牌唯一标识';

COMMENT ON COLUMN "public"."playing"."userid" IS '用户唯一标识';

COMMENT ON COLUMN "public"."playing"."card_guid" IS '卡牌唯一标识';

COMMENT ON COLUMN "public"."playing"."order" IS '出牌顺序';


INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('2a45feef-c406-4af0-ac22-2fb84f514814', 'my', 'fa0a58a7-487c-4451-b1f8-abdb11a731e8', 7);
INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('6f6a084c-e947-4f8a-9c8a-57665706dba5', 'my', '0469a316-2ce5-4bc8-8aef-a982cdeb114e', 1);
INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('cb8834f7-5958-4e1d-bdab-6fe3fb773cf0', 'my', 'eaefb169-a0e3-4519-a821-010c5666de4c', 2);
INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('7b4d6c02-bb4f-4182-bb38-f03c220645f5', 'my', '72fa0da3-456a-4c2f-b03a-4e8ad708f411', 3);
INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('d2166c95-13a3-4e56-bf10-6a34a64297ab', 'my', '523b3bb0-a5e9-40d2-b665-3e018cc6f7b1', 4);
INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('d8ac9b47-9266-4d86-8614-e39b624b7f0b', 'my', 'fc2b1e9c-87aa-43f3-b976-20cb13d0a2c5', 5);
INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('601b2cd8-1cc7-4824-88ff-e0e4e0f0d0ca', 'my', '2ee3a291-1f1a-4f56-83c1-b42e0508f881', 6);
INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('5d4a416c-86fd-41bc-902d-d8cd6f4920e7', 'my', 'c7f15e64-cc07-4e5b-8891-497aaf2b54a3', 8);
INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('791a58dd-b0c0-4490-9f51-9b69cbf02077', 'my', 'fee1592e-50c0-4361-8372-93a86baf12a7', 10);
INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('03d94340-b9d5-4d6f-8c43-5fe1e9274934', 'my', '49da7fe7-2c40-4a71-9c69-70b9773e0dae', 9);
INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('c9688925-bfd5-472f-b2c6-64bd033d5ec5', 'my', '933598cb-7a61-4a77-99c7-9a515ff207bf', 11);
INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('004259bf-0a93-47f6-b85a-25c9b414943a', 'my', 'e65d34f0-41a1-441c-9c68-c91353fcd11f', 12);
INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('cf79ab68-8e6a-4fa3-b86c-91032116103c', 'my', 'eb8e2f21-5337-4836-9d7e-1b26992f49f1', 13);
INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('557db0f8-3da6-45f6-811e-a9d344358eb8', 'my', '74338c30-6739-4a40-9713-1b4f66bcb56d', 14);
INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('8bb320d0-5ec6-4ef7-bee4-721a66718947', 'my', '5d2b3e39-2195-4597-97aa-0e11c883e23c', 15);
INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('9e2325cd-891c-4c60-b099-2cba870dd41a', 'my', 'b8d46942-e548-43cf-a9e5-12df42907eb9', 16);
INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('0e240779-8b82-488e-beec-63e57b17d10f', 'my', '96c6759a-a48e-45c6-838c-32e74f50e1bf', 17);
INSERT INTO "playing"("play_guid", "userid", "card_guid", "order") VALUES ('c640a12a-b8f9-461c-ad5d-e358f37a0cbe', 'my', '4cb21a85-ddd6-41f3-b7e2-fca81717b8a6', 18);
