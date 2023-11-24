using GameStatistics.Models;

namespace GameStatistics.Services.GamesData;

public interface IGameDataService 
{
    Task CreateGameData(GameData gameData);
    Task<List<GameData>> GetAllGamesData();
    Task<GameData?> GetGameData(Guid id);
    public Task DeleteGameData(GameData gameData);
    public Task UpdateGameData(GameData gameData);
}
