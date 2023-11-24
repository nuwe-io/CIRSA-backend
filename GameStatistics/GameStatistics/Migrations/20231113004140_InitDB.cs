using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace GameStatistics.Migrations
{
    /// <inheritdoc />
    public partial class InitDB : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "GamesData",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    GameName = table.Column<string>(type: "text", nullable: false),
                    Category = table.Column<string>(type: "text", nullable: false),
                    TotalBets = table.Column<int>(type: "integer", nullable: false),
                    TotalWins = table.Column<int>(type: "integer", nullable: false),
                    AverageBetAmount = table.Column<float>(type: "real", nullable: false),
                    PopularityScore = table.Column<float>(type: "real", nullable: false),
                    LastUpdated = table.Column<DateTime>(type: "timestamp with time zone", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_GamesData", x => x.Id);
                });

            migrationBuilder.InsertData(
                table: "GamesData",
                columns: new[] { "Id", "AverageBetAmount", "Category", "GameName", "LastUpdated", "PopularityScore", "TotalBets", "TotalWins" },
                values: new object[,]
                {
                    { new Guid("02ee6536-551c-4753-b197-7e866f183030"), 5f, "Card Game", "Crazy Eights", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2920), 5.4f, 3000, 1500 },
                    { new Guid("0d6d2e64-b077-4dc6-ac9e-8eef432a6ed7"), 10f, "Dice Game", "Sic Bo", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2630), 4.6f, 6000, 3000 },
                    { new Guid("12413d34-2903-4e55-b28c-7a0154f0cf88"), 8f, "Card Game", "Gin Poker", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2880), 5.7f, 5000, 2500 },
                    { new Guid("17cdfc57-d5d3-43ed-a375-e9154c58a82d"), 5f, "Card Game", "Canasta", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2900), 4.8f, 2000, 1000 },
                    { new Guid("190fdde3-8026-4e39-9536-0f1c71d9739c"), 100f, "Sports", "MMA Betting", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2210), 5.1f, 400, 200 },
                    { new Guid("19e44f74-fa25-4284-90ea-e6f02be75613"), 48f, "Sports", "Baseball Betting", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2160), 6.5f, 1500, 700 },
                    { new Guid("1b617f9e-90d9-41be-983c-929d7207a8e6"), 1f, "Recreational Machine", "Keno Slot", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2830), 8.9f, 12000, 6000 },
                    { new Guid("1ba7f88e-e0db-4f30-a4b8-0956d58c1806"), 0.5f, "Recreational Machine", "Penny Slots", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2760), 9.6f, 25000, 12500 },
                    { new Guid("1be607c4-e619-4afc-a8db-198652df190a"), 15.2f, "Casinos", "Blackjack", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2060), 7.6f, 1500, 800 },
                    { new Guid("1cfffeb9-66a3-4ab2-b1b3-208610be7a73"), 12f, "Card Game", "Caribbean Stud Poker", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2750), 7.4f, 9000, 4500 },
                    { new Guid("27896d44-dbca-48bd-9b14-50ac09e5b0a4"), 5f, "Recreational Game", "Bingo", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2670), 7.6f, 4000, 2000 },
                    { new Guid("289a4fbb-bea1-47a4-9e9a-20c5a944ec0f"), 200f, "Sports", "Cycling Betting", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2240), 4.8f, 200, 100 },
                    { new Guid("2b5c87f9-31cc-4507-8417-f2ea369a7f81"), 3f, "Recreational machines", "Volleyball Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2450), 4.8f, 30, 10 },
                    { new Guid("2b6a5c2f-f6eb-4907-ab9c-0dd42ece1f56"), 10f, "Recreational machines", "Fishing Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2250), 7.5f, 100, 50 },
                    { new Guid("2f091a8d-ea9e-42ab-9198-cb1cba62fc46"), 25f, "Table Game", "Roulette", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2580), 7.9f, 20000, 10000 },
                    { new Guid("2f8be642-8ad6-45b9-968a-d93176128700"), 1f, "Recreational Machine", "Video Lottery", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2930), 9.7f, 40000, 20000 },
                    { new Guid("31a50744-3085-4df4-b013-bf9ff8072b03"), 5f, "Recreational machines", "Basketball Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2440), 5.4f, 50, 20 },
                    { new Guid("3423cdf8-2e47-421d-b1aa-03ebea2f5bec"), 5f, "Recreational machines", "Bowling Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2260), 6.7f, 50, 20 },
                    { new Guid("3652c841-1505-4b27-98b6-df5fd0a8e92c"), 7f, "Recreational machines", "Baseball Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2430), 6f, 70, 25 },
                    { new Guid("3f5436ec-7229-41f1-99d0-42fe11c0aa49"), 5f, "Recreational Machine", "Slot Machine", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2590), 9.8f, 50000, 25000 },
                    { new Guid("420f48a8-722e-47c6-a46e-f8bda03d9700"), 20f, "Casinos", "Roulette", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2080), 6.9f, 2000, 1000 },
                    { new Guid("427d22e9-4058-4fb2-9b7b-cc4798816045"), 1f, "Recreational Machine", "Video Keno", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2850), 9.1f, 18000, 9000 },
                    { new Guid("42d8ab88-491f-4b27-bc07-8acfafaa3889"), 12.8f, "Casinos", "Craps", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2090), 5.4f, 800, 300 },
                    { new Guid("4ed4d50f-9e3a-41bf-846d-b5928fdd9036"), 25f, "Sports", "Horse Racing", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2130), 8.4f, 3000, 1200 },
                    { new Guid("51f841b6-8683-43ca-85f5-3b5b783bc155"), 18.2f, "Table Game", "Craps", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2610), 7.1f, 12000, 6000 },
                    { new Guid("537ea549-4196-48a5-aa83-8a21e74bee2f"), 3f, "Recreational machines", "Hockey Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2490), 4.4f, 30, 10 },
                    { new Guid("53aa27cc-337e-4c29-a8ed-2256e152c641"), 8f, "Card Game", "Gin Rummy Poker", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(3020), 5.6f, 3000, 1500 },
                    { new Guid("57ac02fb-6795-45f3-b811-7c95352e243f"), 5f, "Card Game", "Pinochle", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2940), 5.1f, 2500, 1250 },
                    { new Guid("5ff8caee-165a-4beb-b4f0-d7d1de637c05"), 2.5f, "Recreational machines", "Slot Machines", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2070), 9.3f, 5000, 2000 },
                    { new Guid("631c6e19-797d-4628-88b0-e4500d012595"), 9f, "Recreational machines", "Baseball Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2540), 7f, 90, 40 },
                    { new Guid("66170f04-6a40-4d01-b2cc-5e95ece74845"), 6f, "Recreational machines", "Skiing Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2310), 5.6f, 60, 20 },
                    { new Guid("67736f58-4e2f-486b-bfbe-af85c628387f"), 1f, "Recreational Machine", "Pachinko", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2690), 9f, 20000, 10000 },
                    { new Guid("67bc6071-e7fe-45fa-a964-66954594341c"), 0.5f, "Recreational Machine", "Penny Poker", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2990), 9.2f, 15000, 7500 },
                    { new Guid("6c04a998-9545-4a34-b844-7f14602d342a"), 15f, "Recreational machines", "Football Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2330), 8.4f, 150, 60 },
                    { new Guid("6e0b6b67-9156-4c74-9455-2eda0be219be"), 42f, "Sports", "Basketball Betting", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2150), 6.8f, 1800, 800 },
                    { new Guid("71f7e935-42fb-493d-ae59-798f5f60a70c"), 10f, "Card Game", "Pontoon", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2790), 6.7f, 6000, 3000 },
                    { new Guid("72c28d6f-4e1b-4ef7-952c-2b356d26e81d"), 80f, "Sports", "Boxing Betting", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2200), 5.4f, 600, 300 },
                    { new Guid("781a73c3-0275-43c0-847e-ab9510ccd4b9"), 1f, "Recreational Machine", "Video Poker", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2780), 9.3f, 15000, 7500 },
                    { new Guid("78d95543-5b4f-4afd-8bf0-053fcaa2f21c"), 9f, "Recreational machines", "Air Hockey", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2290), 7.9f, 90, 40 },
                    { new Guid("7a15fc1f-4b3b-423b-ad90-29dcfd2bc4b4"), 8f, "Card Game", "Cribbage Poker", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(3000), 6.6f, 5000, 2500 },
                    { new Guid("7aac3357-d104-40ab-8971-862e257c8aca"), 60f, "Sports", "Tennis Betting", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2180), 6f, 1000, 500 },
                    { new Guid("7b148f37-c325-4ca1-b859-341c532b3031"), 6f, "Recreational machines", "Boxing Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2510), 5.5f, 60, 20 },
                    { new Guid("8431c3b4-ed06-4aca-9f12-62c099f83f28"), 0.5f, "Recreational Machine", "Penny Bingo", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(3010), 8f, 10000, 5000 },
                    { new Guid("85dc5646-47d3-4fbf-a997-0a2e4e0791f7"), 8f, "Recreational machines", "Darts Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2270), 6f, 80, 30 },
                    { new Guid("8890e2f4-4cdf-4460-96ed-53a95e758675"), 12.5f, "Card Game", "Pai Gow Poker", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2640), 6.9f, 7000, 3500 },
                    { new Guid("8962a450-bd4c-455f-843f-ad5caf76079e"), 50f, "Sports", "Sports Betting", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2120), 9.7f, 5000, 2500 },
                    { new Guid("89c2fa39-dc68-4bf8-9fd5-3c3ed215bd16"), 20f, "Card Game", "Baccarat", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2600), 6.5f, 8000, 4000 },
                    { new Guid("8c7aebb3-678a-4e71-b0fd-f9c2c312b077"), 6f, "Recreational machines", "Boxing Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2400), 6.2f, 60, 20 },
                    { new Guid("90975eac-408c-4691-9b1f-ff807282faf4"), 5f, "Card Game", "Euchre", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2960), 4.7f, 3000, 1500 },
                    { new Guid("9149fbc4-2f7c-4ad8-8759-29cca6253e8a"), 7f, "Recreational machines", "Tennis Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2350), 6.1f, 70, 25 },
                    { new Guid("91cbcdc6-6055-4794-96e9-c1f3b365eddc"), 7f, "Recreational machines", "Foosball", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2300), 6.3f, 70, 25 },
                    { new Guid("94c9c5fb-8a48-42a8-aeb2-687fa7454c1a"), 5f, "Card Game", "Hearts", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2840), 6.1f, 4000, 2000 },
                    { new Guid("961c235d-d968-428c-8273-69fb0409b9e5"), 10.5f, "Card Game", "Poker", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2560), 8.7f, 10000, 5000 },
                    { new Guid("989783e6-2134-4200-9c28-4e2e6f17a4b4"), 1f, "Recreational Machine", "Fruit Machine", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2800), 8.5f, 10000, 5000 },
                    { new Guid("9928415b-13b0-4235-8416-6bc95fc89c4c"), 2f, "Recreational Machine", "Slingo", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2870), 8.3f, 10000, 5000 },
                    { new Guid("a25d25fb-3a56-4086-b035-2ec1f63e2461"), 10f, "Card Game", "Cassino", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2860), 6.4f, 7000, 3500 },
                    { new Guid("a4ed4738-c008-4ec3-a816-72fce9f287c0"), 1f, "Recreational Machine", "Video Blackjack", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2970), 9.5f, 20000, 10000 },
                    { new Guid("a62d8d80-4b7b-4137-bbdb-771ccf29f699"), 2f, "Recreational Machine", "Video Slots", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2820), 9.7f, 35000, 17500 },
                    { new Guid("a8c34bfb-a17a-4b15-9426-1e4db5565872"), 5f, "Card Game", "Cribbage", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2770), 4.9f, 2000, 1000 },
                    { new Guid("aab6bd62-edb9-49e6-bd27-279f7305a9ee"), 10f, "Card Game", "Crazy 4 Poker", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2700), 7.8f, 5000, 2500 },
                    { new Guid("abbb08a2-e1bf-4ec3-9d10-af1137dae58b"), 35f, "Sports", "Soccer Betting", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2140), 7.2f, 2000, 900 },
                    { new Guid("aefb7691-2ab7-4031-bdf4-ffe66ae263dc"), 10f, "Recreational machines", "Basketball Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2550), 7.5f, 100, 40 },
                    { new Guid("b1e4694f-167f-4ff2-94d1-50574cf2d2fc"), 70f, "Sports", "Golf Betting", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2190), 5.7f, 800, 400 },
                    { new Guid("b2556803-4c5e-451f-9ddd-df5414f772e0"), 12f, "Recreational machines", "Guitar Hero Arcade", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2280), 8.7f, 120, 60 },
                    { new Guid("b40489cd-7944-4c22-986b-8c34c1cd7d87"), 7f, "Recreational machines", "Wrestling Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2520), 6f, 70, 25 },
                    { new Guid("b69484ca-6276-4f77-8de2-ad7df0028f7d"), 9f, "Recreational machines", "Racing Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2390), 7.5f, 90, 40 },
                    { new Guid("bb2fd604-cf76-457b-9f00-f0ab8c892781"), 5f, "Recreational machines", "Volleyball Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2360), 5.3f, 50, 20 },
                    { new Guid("c5a4b6c3-9509-42ed-a2fc-f8661abc49c4"), 1f, "Recreational Machine", "Video Lottery Terminal", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2890), 9.4f, 30000, 15000 },
                    { new Guid("c710b0c4-c964-4ecf-8342-f4db099bb306"), 0.5f, "Recreational Machine", "Penny Arcade Slots", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2910), 9.9f, 35000, 17500 },
                    { new Guid("c76d8d57-9134-458d-8fb0-703c7df21c63"), 15.3f, "Card Game", "Texas Hold'em", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2650), 9.5f, 18000, 9000 },
                    { new Guid("cd57a872-68c9-4dc9-b777-2e46fb359381"), 10f, "Recreational Machine", "Wheel of Fortune", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2650), 8.2f, 10000, 5000 },
                    { new Guid("d0292045-b463-4ff9-90fe-09ea16cf19a6"), 5f, "Card Game", "Gin Rummy", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2810), 5.2f, 3000, 1500 },
                    { new Guid("d1cb46a0-1d81-44d8-b771-2e0974f0c22e"), 0.5f, "Recreational Machine", "Penny Roulette", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2950), 8.6f, 10000, 5000 },
                    { new Guid("d2bc84f7-cc56-47db-9cb5-1b3735b4e7a3"), 5f, "Board Game", "Backgammon", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2830), 7.3f, 5000, 2500 },
                    { new Guid("d5e3952b-33a1-40a8-9e7b-9389eab9e2b4"), 15.2f, "Card Game", "Blackjack", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2570), 9.2f, 15000, 7500 },
                    { new Guid("d77e8cf9-7b6c-4921-9485-1be14915d970"), 5f, "Card Game", "Spades", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2980), 6.2f, 4000, 2000 },
                    { new Guid("d9ed1646-a8b9-4dd8-8b61-3c2ec2fd2d38"), 4f, "Recreational machines", "Racing Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2500), 4.9f, 40, 15 },
                    { new Guid("db2c1d0f-6c6e-46e1-b4bc-a56886de46ab"), 4f, "Recreational machines", "Cricket Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2370), 4.6f, 40, 15 },
                    { new Guid("dbd0e0a3-06b5-4ac4-92b3-6b84d4a044b4"), 55f, "Sports", "Cricket Betting", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2170), 6.2f, 1200, 600 },
                    { new Guid("e0739932-2538-48c0-9cf3-99c264fb1a38"), 5.7f, "Recreational machines", "Bingo", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2100), 7.8f, 300, 150 },
                    { new Guid("e1df340b-8c25-49d3-9495-c352f107165d"), 6.2f, "Recreational machines", "Keno", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2110), 6.1f, 400, 200 },
                    { new Guid("e3b5e3a1-1df8-4246-9980-7ec44ed17c37"), 8f, "Recreational machines", "Soccer Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2420), 6.7f, 80, 30 },
                    { new Guid("e68d22df-e614-48f0-86d7-3d93449de452"), 10f, "Recreational machines", "Basketball Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2320), 7.2f, 100, 40 },
                    { new Guid("e72ecc29-d4c1-44dd-8125-d32b5d4769d2"), 10f, "Card Game", "Three Card Poker", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2660), 8.4f, 10000, 5000 },
                    { new Guid("ea9938ef-0cf1-4ad1-94e0-4c3c563b5de4"), 2.5f, "Recreational Game", "Keno", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2620), 5.3f, 3000, 1500 },
                    { new Guid("eb0bf288-f432-46d6-b519-b4df60b87eec"), 5f, "Recreational Machine", "Big Six Wheel", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2720), 8.1f, 8000, 4000 },
                    { new Guid("f17ea857-18ef-498a-88f8-d2e2ff353890"), 10.5f, "Casinos", "Poker", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2030), 8.2f, 1000, 500 },
                    { new Guid("f2055f68-3d08-4e76-8ee3-1ee847ea835a"), 8f, "Card Game", "Red Dog", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2680), 5.9f, 3000, 1500 },
                    { new Guid("f293c6aa-7e7b-4405-97a0-42797eb90a08"), 5f, "Recreational machines", "Cricket Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2480), 5f, 50, 20 },
                    { new Guid("f425291f-5b74-4957-8d38-13f2973cb4cd"), 8f, "Recreational machines", "Soccer Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2530), 6.5f, 80, 30 },
                    { new Guid("f466ca9c-e6ce-4e63-8b93-78d77b05c135"), 4f, "Recreational machines", "Wrestling Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2410), 5.1f, 40, 15 },
                    { new Guid("f49211bf-90a4-4f8b-9309-93487464f23d"), 4f, "Recreational machines", "Tennis Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2460), 4.2f, 40, 15 },
                    { new Guid("fa055017-4ce3-4486-9189-fe3784a62113"), 3f, "Recreational machines", "Hockey Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2380), 3.9f, 30, 10 },
                    { new Guid("fb5e9cd4-8640-47d1-8cd1-377b1bb6a3b2"), 5f, "Card Game", "War", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2710), 6.3f, 4000, 2000 },
                    { new Guid("fd651954-865d-4757-96ae-118b7f6c56f4"), 8f, "Recreational machines", "Golf Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2340), 6.9f, 80, 30 },
                    { new Guid("fed34b58-1921-4194-9c2b-feb9da71c7ed"), 6f, "Recreational machines", "Golf Game", new DateTime(2023, 11, 13, 0, 41, 40, 457, DateTimeKind.Utc).AddTicks(2470), 5.6f, 60, 20 }
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "GamesData");
        }
    }
}
