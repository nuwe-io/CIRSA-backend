using GameStatistics.Contracts.GameData;
using GameStatistics.Models;
using GameStatistics.Services.GamesData;
using Microsoft.AspNetCore.Mvc;



namespace GameStatistics.Controllers;

[ApiController]
[Route("[controller]")]
public class GameDataController : ControllerBase {

    private readonly IGameDataService _gameDataService;

    public GameDataController(IGameDataService gameDataService) {
        _gameDataService = gameDataService;
    }

    [HttpGet]
    public async Task<IActionResult> GetAllGamesData()
    {
        List<GameData> gamesData = await _gameDataService.GetAllGamesData();
        return Ok(gamesData);
    }

    [HttpGet("{id:guid}")]
    public async Task<IActionResult> GetGameData(Guid id){
        GameData? gameDataTask = await _gameDataService.GetGameData(id);

        if (gameDataTask == null) 
            return NotFound();

        var gameData = gameDataTask;

        var resp = new GameDataResponse(
                gameData.Id,
                gameData.GameName,
                gameData.Category,
                gameData.TotalBets,
                gameData.TotalWins,
                gameData.AverageBetAmount,
                gameData.PopularityScore,
                gameData.LastUpdated);

        return Ok(resp);
    }

    [HttpPost]
    public async Task<IActionResult> CreateGameData(CreateGameDataRequest req){

        var gameData = new GameData(
                Guid.NewGuid(),
                req.GameName,
                req.Category,
                req.TotalBets,
                req.TotalWins,
                req.AverageBetAmount,
                req.PopularityScore,
                DateTime.UtcNow
                );

        await _gameDataService.CreateGameData(gameData);
        
        var resp = new GameDataResponse(
                gameData.Id,
                gameData.GameName,
                gameData.Category,
                gameData.TotalBets,
                gameData.TotalWins,
                gameData.AverageBetAmount,
                gameData.PopularityScore,
                gameData.LastUpdated);

        return CreatedAtAction(
                actionName: nameof(GetGameData),
                routeValues: new { id = gameData.Id},
                value : resp);
    }

    [HttpPut("{id:guid}")]
    public async Task<IActionResult> UpdateGameData(Guid id, UpsertGameDataRequest req) {

        var gameData = new GameData(
                id, 
                req.GameName,
                req.Category,
                req.TotalBets,
                req.TotalWins,
                req.AverageBetAmount,
                req.PopularityScore,
                DateTime.UtcNow
                );

        GameData? gameDataTask = await _gameDataService.GetGameData(id);

        if (gameDataTask == null) 
            return NotFound();


        await _gameDataService.UpdateGameData(gameData);

        return NoContent();
    }

    [HttpDelete("{id:guid}")]
    public async Task<IActionResult> DeleteGameData(Guid id){

        GameData? gameDataTask = await _gameDataService.GetGameData(id);

        if (gameDataTask == null) 
            return NotFound();

        var gameData = gameDataTask;

        await _gameDataService.DeleteGameData(gameData);

        return NoContent();
    }


}
