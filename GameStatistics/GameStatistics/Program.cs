using GameStatistics.Services.GamesData;
using GameStatistics.Database;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);
builder.Configuration.AddJsonFile("appsettings.json", optional :false, reloadOnChange: true);

// Add services to the container.
{
    builder.Services.AddControllers();
    //builder.Services.AddSingleton<IGameDataService, GameDataService>();
    builder.Services.AddDbContext<AppDbContext>(opts=>
            {
                opts.UseNpgsql(builder.Configuration.GetConnectionString("DefaultConnection"));
            }, ServiceLifetime.Scoped);

    builder.Services.AddScoped<IGameDataService, GameDataService>();
    //builder.Services.AddTransient<IGameDataService, GameDataService>();
    
    // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
    builder.Services.AddEndpointsApiExplorer();
    builder.Services.AddSwaggerGen();
}


var app = builder.Build();

// Ensure the database is created and migrated
using (var scope = app.Services.CreateScope())
{
    var services = scope.ServiceProvider;
    var dbContext = services.GetRequiredService<AppDbContext>();
    dbContext.Database.Migrate();
}

// Configure the HTTP request pipeline.
{
    
    app.UseSwagger();
    app.UseSwaggerUI();
    app.UseExceptionHandler("/error");
    app.UseHttpsRedirection();
    app.MapControllers();
    app.Run();
}
