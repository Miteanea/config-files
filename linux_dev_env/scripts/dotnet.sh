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
