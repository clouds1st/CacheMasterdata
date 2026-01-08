# Build stage
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

COPY ./src/CacheMasterdata.Api/*.csproj ./src/CacheMasterdata.Api/
COPY ./tests/CacheMasterdata.Tests/*.csproj ./tests/CacheMasterdata.Tests/
RUN dotnet restore ./src/CacheMasterdata.Api/CacheMasterdata.Api.csproj

COPY . .
RUN dotnet publish ./src/CacheMasterdata.Api/CacheMasterdata.Api.csproj -c Release -o /app/publish

# Runtime stage
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
WORKDIR /app
COPY --from=build /app/publish .
ENV ASPNETCORE_URLS=http://+:8080
EXPOSE 8080
ENTRYPOINT ["dotnet", "CacheMasterdata.Api.dll"]
