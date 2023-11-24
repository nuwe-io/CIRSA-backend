# CIRSA Backend Challenge

The Cirsa Backend challenge is about implementing an Stress Testing application in C# (.NET core) to a local C# API.

### Objectives

The challenge is about creating and implementing a Stress Testing application from scratch in C#.
The application should be tested against a working API developed in C# called `GameStatistics`. 

The challenge is divided into 4 main objectives:
1. The Stress Testing app should be able to **smoke test** each endpoint from the `GameStatistics`. The **Smoke Test** should make sure the system performs adequately under minimal load. Each `GameStatistics` endpoint should be tested.
2. The stress testing app should implement an **Average-load** test againg the API to assess how the system would perform under expected conditions. Each `GameStatistics` endpoint should be tested.
3. The stress testing app should implement an **Spike tests** to validate the behavior and survival of the system in cases of sudden, short, and massive increases in activity. `Each `GameStatistics` endpoint should be tested.
4. Identify the limits of the `GameStatistics` API for each endpoint, extracting and documenting the metrics in a well documented report.  Explain and walkthrough each development decision in the report. The report should be in `.pdf`. 

The `GameStatistics` API documentation can be found in the root folder of this repository in the `API.md` file.

**ATTENTION!**: Failing to provide a working application under the requirements scope without any usage documentation could result in not being able to correctly evaluate the objectives. Please, make sure the stress testing application works in .NET v7 and the usage is well-documented.

### Documentation 

A good documentation contains at least the following items:
- **Background** of the project. Its motive.
- **Usage**. How to run the stress testing application.
- **Installation**. If anything should be installed there should be documented here.
- **Decision** making. Decisions should be explained.

## Requierements

- `.NET` version 7.0.403 or above.
- `PostgreSQL` version 14.10 


## Setup `GameStatistics`

In order to start the `GameStatistics` locally follow the next steps:

1. Make sure you have installed `dotnet` and a `PostgreSQL` server is running locally.
2. An initial migration has been created(./GameStatistics/Migrations). Change (if necessary) the `Username` and `Password` of the `appsettings.json` file. 
3. Go into the `GameStatistics` folder. 
4. Create a database migration by running the following command `dotnet ef migrations add InitDB --project GameStatistics`.
5. If no error rises populate the database by running `dotnet ef database update --project GameStatistics`. Make sure a new table called `GamesData` is created and populated.
6. Build the API applicaton by running `dotnet build GameStatistics`.
7. Finally, run the API application by running `dotnet run --project GameStatistics`.


### FAQ - Frequently Asked Questions

**Q: When I run `dotnet ef database update --project GameStatistics` it says `role admin does not exists`**

You should change the `appsettings.json` in the GameStatistics/GameStatistics/ project folder to match your specifications. If your PostgreSQL instance has a username called `cirsaUser` and its password is `ThiStHeC1rsaPa33wor5` then the `DefaultConnection` should look like this:
```json
"DefaultConnection": "Host=localhost;Database=cirsa;Username=cirsaUser;Password=ThiStHeC1rsaPa33wor5"
```

**Q: When I run `dotnet .... --project GameStatistics` it says `Unable to retrieve project metadata`**

This happens because the `dotnet` did not found the project. The API application is inside `GameStatistics/GameStatistics`. There are multiple ways to initialize, build and / or run the project:
1. From the root of the repository appending to each command `--project GameStatistics/GameStatistics`
2. In the (first) GameStatistics/ folder appending to each command `--project GameStatistics`
3. Inside the (second) GameStatistics folder without appending anything. 


**Q: Where can I find the API documentation for the `GameStatistics` API?**

The `GameStatistics` API documentation can be found in the root folder of this repository in the `API.md` file.
