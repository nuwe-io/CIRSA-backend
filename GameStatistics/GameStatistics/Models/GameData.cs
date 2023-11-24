namespace GameStatistics.Models;


public class GameData{
    public Guid Id { get; set;} 
    public string GameName { get; set;} 
    public string Category { get; set;} 
    public int TotalBets { get; set;} 
    public int TotalWins { get; set;} 
    public float AverageBetAmount { get; set;} 
    public float PopularityScore { get; set;} 
    public DateTime LastUpdated{ get; set;} 

    public GameData(
            Guid id,
            string gameName,
            string category,
            int totalBets,
            int totalWins,
            float averageBetAmount,
            float popularityScore,
            DateTime lastUpdated)
    {
        // Enforce logics on GameData attributes.
        Id = id;
        GameName = gameName;
        Category = category;
        TotalBets = totalBets;
        TotalWins = totalWins;
        AverageBetAmount = averageBetAmount;
        PopularityScore = popularityScore;
        LastUpdated = lastUpdated;
    }
}
