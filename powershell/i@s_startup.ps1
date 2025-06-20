$global:htl_creds = "C:\Users\dmitric\projects\hitechled\creds.txt"
function Edit-Creds { 
    nvim.exe "C:\Users\dmitric\projects\hitechled\creds.txt"
} 
Set-Alias creds Edit-Creds

function Run-HTL { 
    cd "C:\Users\dmitric\projects\hitechled\code\CloudDisplayServer\"

    code "C:\Users\dmitric\projects\hitechled\code\CloudDisplayServer\"
    code "C:\Users\dmitric\projects\hitechled\code\CloudDisplayController\"
    code "C:\Users\dmitric\projects\hitechled\code\CloudDisplayControllerDotNet\"
    code "C:\Users\dmitric\projects\hitechled\code\CloudDisplayDeviceManager\"
}
Set-Alias htl_srv Run-HTL

function Run-SellaPersonalCredit { 

    cd "C:\Users\dmitric\projects\SellaPersonalCredit"

    code "C:\Users\dmitric\projects\SellaPersonalCredit\code\customersupportspc\"
    code "C:\Users\dmitric\projects\SellaPersonalCredit\code\customersupportspcweb\"
    code "C:\Users\dmitric\projects\SellaPersonalCredit\code\AppPagoServer\"

# $projects = 
# @( 
# 	"C:\Users\dmitric\projects\SellaPersonalCredit\code\AppPagoServer\EventStore", 
# 	"C:\Users\dmitric\projects\SellaPersonalCredit\code\AppPagoServer\DeviceService", 
# 	"C:\Users\dmitric\projects\SellaPersonalCredit\code\AppPagoServer\ApiGateway", 
# 	"C:\Users\dmitric\projects\SellaPersonalCredit\code\AppPagoServer\LoanService") foreach ($project in $projects) { Start-Process -FilePath "dotnet" -ArgumentList "run" -WorkingDirectory $project -NoNewWindow}


}
Set-Alias spc Run-SellaPersonalCredit

function Go-To-Docs { 
    nvim "C:\Users\dmitric\projects\hitechled\docs\"
}
Set-Alias htl_docs Go-To-Docs

& "C:\Users\dmitric\i@s_startup.ps1"