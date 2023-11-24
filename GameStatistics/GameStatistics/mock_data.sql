CREATE TABLE IF NOT EXISTS "__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL,
    CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId")
);

START TRANSACTION;

CREATE TABLE "GamesData" (
    "Id" uuid NOT NULL,
    "GameName" text NOT NULL,
    "Category" text NOT NULL,
    "TotalBets" integer NOT NULL,
    "TotalWins" integer NOT NULL,
    "AverageBetAmount" real NOT NULL,
    "PopularityScore" real NOT NULL,
    "LastUpdated" timestamp with time zone NOT NULL,
    CONSTRAINT "PK_GamesData" PRIMARY KEY ("Id")
);

INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('0fae7d97-daa0-4ac4-974f-90b8d8e0eac4', 7, 'Recreational machines', 'Baseball Game', TIMESTAMPTZ '2023-11-12 23:55:50.527757Z', 6, 70, 25);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('12219ec0-6cde-4c47-8c4d-fd4a5dbe2125', 7, 'Recreational machines', 'Foosball', TIMESTAMPTZ '2023-11-12 23:55:50.527743Z', 6.3, 70, 25);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('181de32a-640b-414d-a798-818258309b5f', 1, 'Recreational Machine', 'Video Keno', TIMESTAMPTZ '2023-11-12 23:55:50.527798Z', 9.1, 18000, 9000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('1c4ad776-f964-408c-a42d-d56cafb97c6d', 6, 'Recreational machines', 'Boxing Game', TIMESTAMPTZ '2023-11-12 23:55:50.527755Z', 6.2, 60, 20);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('1e21292c-4939-4757-b54f-dfba71290529', 2, 'Recreational Machine', 'Slingo', TIMESTAMPTZ '2023-11-12 23:55:50.5278Z', 8.3, 10000, 5000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('20c3f676-5a0d-4773-9f1b-9739c1bf50d9', 1, 'Recreational Machine', 'Video Poker', TIMESTAMPTZ '2023-11-12 23:55:50.527791Z', 9.3, 15000, 7500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('237b3239-43b8-43c9-8e07-192bf008965e', 6.2, 'Recreational machines', 'Keno', TIMESTAMPTZ '2023-11-12 23:55:50.527726Z', 6.1, 400, 200);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('26f8a392-8175-4b38-9688-0d234f7657db', 80, 'Sports', 'Boxing Betting', TIMESTAMPTZ '2023-11-12 23:55:50.527735Z', 5.4, 600, 300);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('2707f02e-6f16-46b2-83bf-c6f8a1db17c3', 8, 'Recreational machines', 'Darts Game', TIMESTAMPTZ '2023-11-12 23:55:50.52774Z', 6, 80, 30);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('2815163b-1d42-4107-8699-f0f312795246', 12.5, 'Card Game', 'Pai Gow Poker', TIMESTAMPTZ '2023-11-12 23:55:50.527778Z', 6.9, 7000, 3500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('28392cf3-d9e2-4a8d-b5a0-fb6180ce74d8', 6, 'Recreational machines', 'Skiing Game', TIMESTAMPTZ '2023-11-12 23:55:50.527744Z', 5.6, 60, 20);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('29057cf8-0ab7-4b26-ae68-2fb889f00782', 20, 'Casinos', 'Roulette', TIMESTAMPTZ '2023-11-12 23:55:50.527723Z', 6.9, 2000, 1000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('2d04a35b-5f24-46be-963c-6b1a52c7181a', 12.8, 'Casinos', 'Craps', TIMESTAMPTZ '2023-11-12 23:55:50.527724Z', 5.4, 800, 300);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('2d617e1b-c8b8-4401-9735-69ab647eace6', 8, 'Card Game', 'Red Dog', TIMESTAMPTZ '2023-11-12 23:55:50.527783Z', 5.9, 3000, 1500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('32d0b923-754b-461f-9c64-1a0a772dac9a', 3, 'Recreational machines', 'Hockey Game', TIMESTAMPTZ '2023-11-12 23:55:50.527763Z', 4.4, 30, 10);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('38fcedf4-7705-44e3-9261-56328c18e2b2', 8, 'Card Game', 'Gin Rummy Poker', TIMESTAMPTZ '2023-11-12 23:55:50.527816Z', 5.6, 3000, 1500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('3b967e3e-5bd5-442e-b357-cb064ad88b40', 20, 'Card Game', 'Baccarat', TIMESTAMPTZ '2023-11-12 23:55:50.527774Z', 6.5, 8000, 4000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('40868564-3b11-4a76-bbaf-0b158b112d04', 9, 'Recreational machines', 'Baseball Game', TIMESTAMPTZ '2023-11-12 23:55:50.527768Z', 7, 90, 40);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('46babec7-9d6d-4015-a054-82caba1e02e6', 10.5, 'Casinos', 'Poker', TIMESTAMPTZ '2023-11-12 23:55:50.527718Z', 8.2, 1000, 500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('54d54705-c0d2-4137-ac00-5f2f2d813096', 7, 'Recreational machines', 'Tennis Game', TIMESTAMPTZ '2023-11-12 23:55:50.527748Z', 6.1, 70, 25);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('581fdf1b-6fa5-4dba-9f2e-14a12b6e126a', 60, 'Sports', 'Tennis Betting', TIMESTAMPTZ '2023-11-12 23:55:50.527733Z', 6, 1000, 500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('58236e55-705c-447d-9ba9-6e498e32695b', 50, 'Sports', 'Sports Betting', TIMESTAMPTZ '2023-11-12 23:55:50.527727Z', 9.7, 5000, 2500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('59d7aa66-10d0-4655-98e4-c579f1fbd911', 5, 'Card Game', 'Hearts', TIMESTAMPTZ '2023-11-12 23:55:50.527797Z', 6.1, 4000, 2000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('5ce90755-b7af-436a-947a-8d8e668a6482', 4, 'Recreational machines', 'Racing Game', TIMESTAMPTZ '2023-11-12 23:55:50.527764Z', 4.9, 40, 15);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('5e436381-881d-49fe-a189-20447558db2b', 12, 'Recreational machines', 'Guitar Hero Arcade', TIMESTAMPTZ '2023-11-12 23:55:50.527741Z', 8.7, 120, 60);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('5f4b10e3-e29f-4149-9d08-20ad89e10d11', 0.5, 'Recreational Machine', 'Penny Slots', TIMESTAMPTZ '2023-11-12 23:55:50.527789Z', 9.6, 25000, 12500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('61a8bc83-8a1b-44fc-ba6b-f51270b95cfa', 35, 'Sports', 'Soccer Betting', TIMESTAMPTZ '2023-11-12 23:55:50.527729Z', 7.2, 2000, 900);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('69e430ce-0255-4fc6-bb58-de846b0667ef', 1, 'Recreational Machine', 'Keno Slot', TIMESTAMPTZ '2023-11-12 23:55:50.527796Z', 8.9, 12000, 6000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('6b40a639-23f8-4592-9061-3ec502209138', 1, 'Recreational Machine', 'Video Lottery', TIMESTAMPTZ '2023-11-12 23:55:50.527807Z', 9.7, 40000, 20000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('6cee89b2-4036-400e-9dae-313ea6f15946', 10, 'Card Game', 'Three Card Poker', TIMESTAMPTZ '2023-11-12 23:55:50.527781Z', 8.4, 10000, 5000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('6e43a0b9-6044-4d9f-9f5e-04452b310d04', 4, 'Recreational machines', 'Cricket Game', TIMESTAMPTZ '2023-11-12 23:55:50.52775Z', 4.6, 40, 15);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('70c49650-5e50-4e0f-b145-08a62ec462d6', 200, 'Sports', 'Cycling Betting', TIMESTAMPTZ '2023-11-12 23:55:50.527737Z', 4.8, 200, 100);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('71cff657-a40e-4be5-a3b4-068c388165df', 10, 'Card Game', 'Pontoon', TIMESTAMPTZ '2023-11-12 23:55:50.527791Z', 6.7, 6000, 3000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('72b28f89-245e-46b4-8b32-0aa2e97ac180', 15, 'Recreational machines', 'Football Game', TIMESTAMPTZ '2023-11-12 23:55:50.527746Z', 8.4, 150, 60);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('72fcca1a-93c3-4918-ad9d-15f1930ff633', 9, 'Recreational machines', 'Air Hockey', TIMESTAMPTZ '2023-11-12 23:55:50.527742Z', 7.9, 90, 40);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('7640359a-1463-4250-b169-7d1f6fff7bc0', 2.5, 'Recreational machines', 'Slot Machines', TIMESTAMPTZ '2023-11-12 23:55:50.527722Z', 9.3, 5000, 2000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('79b73fc5-9e0d-4ca0-b65b-df1132ca0b12', 5, 'Card Game', 'Cribbage', TIMESTAMPTZ '2023-11-12 23:55:50.52779Z', 4.9, 2000, 1000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('7ad8595a-a967-4f6c-a35b-6d17548437c2', 0.5, 'Recreational Machine', 'Penny Poker', TIMESTAMPTZ '2023-11-12 23:55:50.527813Z', 9.2, 15000, 7500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('7f331fe8-97a7-4a09-8a8c-d8e301ef7e84', 0.5, 'Recreational Machine', 'Penny Bingo', TIMESTAMPTZ '2023-11-12 23:55:50.527815Z', 8, 10000, 5000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('80c5ae7f-76c2-4566-a0a9-3591006faea1', 8, 'Recreational machines', 'Soccer Game', TIMESTAMPTZ '2023-11-12 23:55:50.527756Z', 6.7, 80, 30);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('81f3278f-e4a8-4b5f-bed6-88bec69f083f', 10, 'Recreational machines', 'Basketball Game', TIMESTAMPTZ '2023-11-12 23:55:50.527745Z', 7.2, 100, 40);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('84ba84ea-74f1-456d-97f9-66c8564c67cf', 5, 'Card Game', 'Spades', TIMESTAMPTZ '2023-11-12 23:55:50.527812Z', 6.2, 4000, 2000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('84e920f6-88d7-4f83-b4a8-2055b4143267', 42, 'Sports', 'Basketball Betting', TIMESTAMPTZ '2023-11-12 23:55:50.52773Z', 6.8, 1800, 800);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('86627ce7-b54e-408d-a914-5092750e0972', 5, 'Recreational Machine', 'Big Six Wheel', TIMESTAMPTZ '2023-11-12 23:55:50.527787Z', 8.1, 8000, 4000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('8bd1240c-2b8f-4fc5-96ff-01ed7e8b0e2a', 25, 'Sports', 'Horse Racing', TIMESTAMPTZ '2023-11-12 23:55:50.527728Z', 8.4, 3000, 1200);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('8ce35c75-769b-4c8e-8248-f1a22dc2767e', 5, 'Recreational machines', 'Cricket Game', TIMESTAMPTZ '2023-11-12 23:55:50.527762Z', 5, 50, 20);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('8d02bde8-b4f1-461e-8a57-62a97502c265', 10, 'Card Game', 'Cassino', TIMESTAMPTZ '2023-11-12 23:55:50.527799Z', 6.4, 7000, 3500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('8d5ebde8-4577-4a13-8cfe-c88eac49860e', 25, 'Table Game', 'Roulette', TIMESTAMPTZ '2023-11-12 23:55:50.527772Z', 7.9, 20000, 10000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('8dbe2371-9448-4b78-b3d6-dea0609f9322', 9, 'Recreational machines', 'Racing Game', TIMESTAMPTZ '2023-11-12 23:55:50.527753Z', 7.5, 90, 40);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('8f49b09a-7a80-4e54-9393-4e878ad08f57', 15.2, 'Casinos', 'Blackjack', TIMESTAMPTZ '2023-11-12 23:55:50.52772Z', 7.6, 1500, 800);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('8f712ed1-84c4-4e9b-9003-a64f751f0da6', 8, 'Recreational machines', 'Soccer Game', TIMESTAMPTZ '2023-11-12 23:55:50.527767Z', 6.5, 80, 30);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('8fc10ec5-a179-4ff8-bfe4-b6120a0e5d59', 10, 'Recreational Machine', 'Wheel of Fortune', TIMESTAMPTZ '2023-11-12 23:55:50.527779Z', 8.2, 10000, 5000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('9327dcb9-4382-4ffa-b306-11a21c7596e4', 5, 'Card Game', 'Canasta', TIMESTAMPTZ '2023-11-12 23:55:50.527804Z', 4.8, 2000, 1000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('953d4dc9-9117-457e-bfc8-d336743ce9ca', 8, 'Card Game', 'Cribbage Poker', TIMESTAMPTZ '2023-11-12 23:55:50.527814Z', 6.6, 5000, 2500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('95921241-afb8-4835-8cd8-92062430e8a7', 10, 'Card Game', 'Crazy 4 Poker', TIMESTAMPTZ '2023-11-12 23:55:50.527785Z', 7.8, 5000, 2500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('96fc1f09-e8e3-4c27-89b5-c33c61c7bd14', 100, 'Sports', 'MMA Betting', TIMESTAMPTZ '2023-11-12 23:55:50.527736Z', 5.1, 400, 200);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('99fa765c-a58c-4512-bbc7-796e2f3b2fc9', 10, 'Dice Game', 'Sic Bo', TIMESTAMPTZ '2023-11-12 23:55:50.527777Z', 4.6, 6000, 3000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('9a35dbf7-cc03-41a4-97f0-85eaa0a8095f', 3, 'Recreational machines', 'Volleyball Game', TIMESTAMPTZ '2023-11-12 23:55:50.527759Z', 4.8, 30, 10);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('9a6a5656-f6cd-4455-9676-29c808b11e27', 6, 'Recreational machines', 'Golf Game', TIMESTAMPTZ '2023-11-12 23:55:50.527761Z', 5.6, 60, 20);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('9b05efe3-3f48-45e0-af98-d6535cd3ee0b', 8, 'Card Game', 'Gin Poker', TIMESTAMPTZ '2023-11-12 23:55:50.527801Z', 5.7, 5000, 2500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('9c2b45fd-c037-4070-896d-d4744cdce790', 18.2, 'Table Game', 'Craps', TIMESTAMPTZ '2023-11-12 23:55:50.527775Z', 7.1, 12000, 6000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('9e9cdf0d-a07b-4c26-9b6a-5fc3ea389b5c', 70, 'Sports', 'Golf Betting', TIMESTAMPTZ '2023-11-12 23:55:50.527734Z', 5.7, 800, 400);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('9f996c55-d701-4e6f-b7c7-1d4b2bd4fcba', 10, 'Recreational machines', 'Basketball Game', TIMESTAMPTZ '2023-11-12 23:55:50.527769Z', 7.5, 100, 40);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('9fa13efe-70bb-47ec-8b51-0e59aba3f612', 2, 'Recreational Machine', 'Video Slots', TIMESTAMPTZ '2023-11-12 23:55:50.527794Z', 9.7, 35000, 17500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('a04cce10-dcaa-4067-80b4-99e3901dd43d', 5, 'Recreational machines', 'Bowling Game', TIMESTAMPTZ '2023-11-12 23:55:50.527739Z', 6.7, 50, 20);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('a0fdbf1e-e627-4642-a59f-5023cfee0618', 7, 'Recreational machines', 'Wrestling Game', TIMESTAMPTZ '2023-11-12 23:55:50.527766Z', 6, 70, 25);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('a3c47eeb-1274-4d50-918b-5721a7aa1d09', 55, 'Sports', 'Cricket Betting', TIMESTAMPTZ '2023-11-12 23:55:50.527732Z', 6.2, 1200, 600);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('a4cda37c-50f0-495f-b356-bde9e87420ec', 10.5, 'Card Game', 'Poker', TIMESTAMPTZ '2023-11-12 23:55:50.52777Z', 8.7, 10000, 5000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('a6477943-a853-4227-808f-4858a7a5660d', 5, 'Card Game', 'Crazy Eights', TIMESTAMPTZ '2023-11-12 23:55:50.527806Z', 5.4, 3000, 1500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('a6eeafbe-28b6-4d4a-b8e3-8e8fabee4cbc', 5, 'Card Game', 'Gin Rummy', TIMESTAMPTZ '2023-11-12 23:55:50.527793Z', 5.2, 3000, 1500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('a7806e44-6917-48f0-90ee-8483c1e57ec7', 1, 'Recreational Machine', 'Video Lottery Terminal', TIMESTAMPTZ '2023-11-12 23:55:50.527803Z', 9.4, 30000, 15000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('a94aab5d-8000-4448-ab9d-8725c54e6f9f', 1, 'Recreational Machine', 'Pachinko', TIMESTAMPTZ '2023-11-12 23:55:50.527784Z', 9, 20000, 10000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('ac362b73-6c1a-485e-8a41-f8740e86226a', 5, 'Recreational machines', 'Volleyball Game', TIMESTAMPTZ '2023-11-12 23:55:50.527749Z', 5.3, 50, 20);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('acaec47f-f4da-47a7-97c6-9ffad1b682b8', 10, 'Recreational machines', 'Fishing Game', TIMESTAMPTZ '2023-11-12 23:55:50.527738Z', 7.5, 100, 50);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('afe3cbd1-50d3-4bb8-ad57-0362174d187c', 6, 'Recreational machines', 'Boxing Game', TIMESTAMPTZ '2023-11-12 23:55:50.527765Z', 5.5, 60, 20);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('b428ce5d-2490-432d-9b43-2e77f5d976d5', 4, 'Recreational machines', 'Tennis Game', TIMESTAMPTZ '2023-11-12 23:55:50.52776Z', 4.2, 40, 15);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('b5d5cade-2130-4977-9d13-929438b9b466', 5, 'Board Game', 'Backgammon', TIMESTAMPTZ '2023-11-12 23:55:50.527795Z', 7.3, 5000, 2500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('b624ffd1-4eaa-4f04-be55-8e2fe1d5db2b', 2.5, 'Recreational Game', 'Keno', TIMESTAMPTZ '2023-11-12 23:55:50.527776Z', 5.3, 3000, 1500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('cb304310-437f-4472-bddf-ba2aebb02994', 5, 'Card Game', 'War', TIMESTAMPTZ '2023-11-12 23:55:50.527786Z', 6.3, 4000, 2000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('cc3d1f0f-7421-49e6-a10e-19240b70ead6', 5, 'Recreational Game', 'Bingo', TIMESTAMPTZ '2023-11-12 23:55:50.527782Z', 7.6, 4000, 2000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('cd1ea231-60a6-4444-b459-abf77580a738', 5, 'Recreational Machine', 'Slot Machine', TIMESTAMPTZ '2023-11-12 23:55:50.527773Z', 9.8, 50000, 25000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('d11bf420-a925-48ce-b2f8-055b781cf12d', 5, 'Card Game', 'Euchre', TIMESTAMPTZ '2023-11-12 23:55:50.52781Z', 4.7, 3000, 1500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('d38f99ef-93e7-41a1-8dfc-ad5c65312e45', 5, 'Recreational machines', 'Basketball Game', TIMESTAMPTZ '2023-11-12 23:55:50.527758Z', 5.4, 50, 20);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('d44d6449-1470-44e6-a0d4-97fe1b810a28', 15.3, 'Card Game', 'Texas Hold''em', TIMESTAMPTZ '2023-11-12 23:55:50.52778Z', 9.5, 18000, 9000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('d4fc64b7-0df7-4759-9e16-473c8ab409e9', 12, 'Card Game', 'Caribbean Stud Poker', TIMESTAMPTZ '2023-11-12 23:55:50.527788Z', 7.4, 9000, 4500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('d6af7f64-c4a4-45cd-ae15-bc2ffc1bc36a', 0.5, 'Recreational Machine', 'Penny Arcade Slots', TIMESTAMPTZ '2023-11-12 23:55:50.527805Z', 9.9, 35000, 17500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('d87fb44b-e2ae-45e1-96ee-a4c383c3ae52', 1, 'Recreational Machine', 'Video Blackjack', TIMESTAMPTZ '2023-11-12 23:55:50.527811Z', 9.5, 20000, 10000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('da5831b2-2d31-49f0-8c67-a6c151cb06a1', 3, 'Recreational machines', 'Hockey Game', TIMESTAMPTZ '2023-11-12 23:55:50.527751Z', 3.9, 30, 10);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('daa6cd06-7106-4fc3-8a29-c70d0ff67f74', 1, 'Recreational Machine', 'Fruit Machine', TIMESTAMPTZ '2023-11-12 23:55:50.527792Z', 8.5, 10000, 5000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('e2b3c3a6-9759-4a78-be09-5092642e9d64', 48, 'Sports', 'Baseball Betting', TIMESTAMPTZ '2023-11-12 23:55:50.527731Z', 6.5, 1500, 700);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('e3175bd2-b2c7-427b-aa42-30e8846b9a7d', 15.2, 'Card Game', 'Blackjack', TIMESTAMPTZ '2023-11-12 23:55:50.527771Z', 9.2, 15000, 7500);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('e37214a4-3442-438b-b69b-565f559af65b', 0.5, 'Recreational Machine', 'Penny Roulette', TIMESTAMPTZ '2023-11-12 23:55:50.527809Z', 8.6, 10000, 5000);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('e7973439-a529-4799-804c-5c45df1e62fc', 5, 'Card Game', 'Pinochle', TIMESTAMPTZ '2023-11-12 23:55:50.527808Z', 5.1, 2500, 1250);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('eb228a54-bb57-44ef-9f88-bfdb2e83d534', 8, 'Recreational machines', 'Golf Game', TIMESTAMPTZ '2023-11-12 23:55:50.527747Z', 6.9, 80, 30);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('ed21c643-30e9-4c52-9fb6-02633b3ac898', 5.7, 'Recreational machines', 'Bingo', TIMESTAMPTZ '2023-11-12 23:55:50.527725Z', 7.8, 300, 150);
INSERT INTO "GamesData" ("Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins")
VALUES ('eef51872-f29c-4ef9-a48e-70a66fd539d6', 4, 'Recreational machines', 'Wrestling Game', TIMESTAMPTZ '2023-11-12 23:55:50.527755Z', 5.1, 40, 15);

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20231112235550_InitialSeed', '7.0.13');

COMMIT;


