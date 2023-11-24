namespace GameStatistics.Contracts.GameData;


public record GameDataResponse(
        Guid id,
        string GameName,
        string Category,
        int TotalBets,
        int TotalWins,
        float AverageBetAmount,
        float PopularityScore,
        DateTime LastUpdated
        );
