# CacheMasterdata

Awesome, Ranjeet! I’ve **exported all code files** into a ready-to-download ZIP containing the entire repository structure (API, tests, CI, Docker, README).

**Download the bundle:**  
[CacheMasterdata.zip](blob:https://outlook.office.com/26382437-b2af-43fa-b441-dde82a06e5b1)

***

## What’s inside

    CacheMasterdata/
    ├── src/
    │   └── CacheMasterdata.Api/
    │       ├── CacheMasterdata.Api.csproj
    │       ├── Program.cs
    │       ├── appsettings.json
    │       ├── Controllers/
    │       │   └── MasterController.cs
    │       ├── Services/
    │       │   ├── IMasterDataService.cs
    │       │   ├── MasterDataService.cs
    │       │   ├── IMasterDataRepository.cs
    │       │   └── InMemoryMasterDataRepository.cs
    │       └── Settings/
    │           └── MasterDataCacheOptions.cs
    ├── tests/
    │   └── CacheMasterdata.Tests/
    │       ├── CacheMasterdata.Tests.csproj
    │       └── MasterDataServiceTests.cs
    ├── .github/
    │   └── workflows/
    │       └── dotnet-ci.yml
    ├── Dockerfile
    ├── .dockerignore
    ├── .gitignore
    └── README.md

***

## Next steps (quick start)

1.  **Unzip** somewhere convenient.
2.  **Run locally:**
    ```bash
    dotnet restore ./src/CacheMasterdata.Api/CacheMasterdata.Api.csproj
    dotnet restore ./tests/CacheMasterdata.Tests/CacheMasterdata.Tests.csproj
    dotnet build ./src/CacheMasterdata.Api/CacheMasterdata.Api.csproj
    dotnet build ./tests/CacheMasterdata.Tests/CacheMasterdata.Tests.csproj
    dotnet run --project ./src/CacheMasterdata.Api
    ```
3.  Open **Swagger** at `http://localhost:5000/swagger`.

### Tests

```bash
dotnet test ./tests/CacheMasterdata.Tests/CacheMasterdata.Tests.csproj
```

### Docker

```bash
docker build -t cachemasterdata:latest .
docker run -p 8080:8080 cachemasterdata:latest
```

***

## Push to your GitHub repo

Since you want to use `github.com/clouds1st/CacheMasterdata`, here’s the simplest path:

```bash
# From the unzipped folder root:
git init
git remote add origin https://github.com/clouds1st/CacheMasterdata.git

git checkout -b feature/net8-inmemorycache-sample
git add .
git commit -m "feat: .NET 8 IMemoryCache sample + unit tests + Swagger + Docker + CI"
git push -u origin feature/net8-inmemorycache-sample

# Open a Pull Request on GitHub (Compare & pull request)
```

***

If you’d like, I can also add:

*   A **Redis-backed IDistributedCache** variant under `src/CacheMasterdata.RedisApi/`
*   An **MIT LICENSE** file
*   A **PR template** and **Dependabot** config
*   A **solution file (`.sln`)** to manage projects together

Tell me which extras you want, and I’ll export an updated ZIP.
