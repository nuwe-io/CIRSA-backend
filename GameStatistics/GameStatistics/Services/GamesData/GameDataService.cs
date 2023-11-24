using GameStatistics.Models;
using GameStatistics.Database;
using Microsoft.EntityFrameworkCore;


namespace GameStatistics.Services.GamesData;

public class GameDataService : IGameDataService 
{
    private readonly AppDbContext _context;

    public GameDataService(AppDbContext context)
    {
        _context = context;
    }

    public async Task CreateGameData(GameData gameData)
    {
        _context.Add(gameData);
        await _context.SaveChangesAsync();
    }

    public async Task<List<GameData>> GetAllGamesData(){
        var result = await _context.GamesData.ToListAsync();
        return result;
    }

    public async Task<GameData?> GetGameData(Guid id)
    {
        var result = await _context.GamesData.FindAsync(id);

        if (result == null)
            return null;

        return result;
    }

    public async Task DeleteGameData(GameData gameData) 
    {

        _context.GamesData.Remove(gameData);

        await _context.SaveChangesAsync();
    }

    public async Task UpdateGameData(GameData gameData)
    {
         var keys = _context.GamesData.FirstOrDefault(item => item.Id == gameData.Id);

         bool tracked = _context.Entry(gameData).State != EntityState.Detached;

         if (tracked)
             return;
         

         if (keys != null)
         {

             var oldValues = _context.Set<GameData>().Find(keys.Id);
             if (oldValues == null)
                 return;
             _context.Entry(oldValues).CurrentValues.SetValues(gameData);
         }
         else
         {
             _context.Set<GameData>().Attach(gameData);
             _context.Entry(gameData).State = EntityState.Modified;
         }

         await _context.SaveChangesAsync();
    }
}
