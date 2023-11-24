namespace GameStatistics.Contracts.GameData;


public record CreateGameDataRequest(
        string GameName,
        string Category,
        int TotalBets,
        int TotalWins,
        float AverageBetAmount,
        float PopularityScore,
        DateTime LastUpdated
        );
