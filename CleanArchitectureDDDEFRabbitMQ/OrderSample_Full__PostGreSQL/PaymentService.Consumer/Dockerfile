FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY . .
RUN dotnet restore "PaymentService.Consumer/PaymentService.Consumer.csproj"
RUN dotnet publish "PaymentService.Consumer/PaymentService.Consumer.csproj" -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "PaymentService.Consumer.dll"]
