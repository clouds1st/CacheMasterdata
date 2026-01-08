# CacheMasterdata

A .NET 8 Web API demonstrating **inbuilt caching** for Master Data Lists using `IMemoryCache`, with unit tests (including deterministic expiration using `FakeTimeProvider`), Swagger, Docker, and GitHub Actions CI.

## Features
- `IMemoryCache` with **absolute** & **sliding** expiration.
- Clean service/repository separation and manual invalidation endpoint.
- Unit tests: cache hits/misses, invalidation, expiration.
- Swagger UI.
- Dockerized build and run.
- GitHub Actions CI (`build + test`).

## Quick Start

Clone the repo and run locally:

```bash
dotnet restore ./src/CacheMasterdata.Api/CacheMasterdata.Api.csproj
dotnet restore ./tests/CacheMasterdata.Tests/CacheMasterdata.Tests.csproj
dotnet build ./src/CacheMasterdata.Api/CacheMasterdata.Api.csproj
dotnet build ./tests/CacheMasterdata.Tests/CacheMasterdata.Tests.csproj
dotnet run --project ./src/CacheMasterdata.Api
```

Open Swagger at: `http://localhost:5000/swagger` (or `http://localhost:8080/swagger` when running Docker).

### API
- `GET /api/master/countries` — returns cached list of countries.
- `POST /api/master/countries/invalidate` — clears the cache entry.

### Configuration
Adjust cache expiration in `appsettings.json`:
```json
{
  "CacheSettings": {
    "AbsoluteExpirationMinutes": 30,
    "SlidingExpirationMinutes": 10
  }
}
```

### Tests
```bash
dotnet test ./tests/CacheMasterdata.Tests/CacheMasterdata.Tests.csproj
```

### Docker
```bash
docker build -t cachemasterdata:latest .
docker run -p 8080:8080 cachemasterdata:latest
```

## Notes
- Use `IMemoryCache` for single-instance apps; for multi-instance, consider `IDistributedCache` (Redis, SQL Server).
- You can enable `MemoryCacheOptions.SizeLimit` and set `entry.Size` if you want size-based eviction.

## License
MIT
