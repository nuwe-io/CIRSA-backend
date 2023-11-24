namespace GameStatistics.Contracts.GameData;


public record UpsertGameDataRequest(
        string GameName,
        string Category,
        int TotalBets,
        int TotalWins,
        float AverageBetAmount,
        float PopularityScore,
        DateTime LastUpdated
        );
