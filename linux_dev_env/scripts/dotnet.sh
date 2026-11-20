netb() {
    dotnet build
}

netbe() {
    dotnet build | grep error
}

netr() {
    dotnet run
}

netrls() {
    dotnet run -lp "$1"
}

nett() {
  dotnet test
}

# EF Core
efdu(){
  dotnet ef database update $1 --verbose
}

efdum(){
  dotnet ef database update "$1" --verbose
}

efml() {
  dotnet ef migrations list --verbose
}

efma()  {
  dotnet ef migrations add "$1" --verbose
}

efmr() {
  dotnet ef migrations remove --verbose
}

