Set-ExecutionPolicy Unrestricted
clear


Write-Host "Mehmet PATLAKYIGIT | Office Apps & Services MVP" -ForegroundColor blue
Write-Host "https://www.parlakyigit.net/" -ForegroundColor blue
Write-Host "Twitter:@mparlakyigit" -ForegroundColor blue
Write-Host "- Microsoft 365 | Deleting emails by subject in Exchange Online for all users -" -ForegroundColor red
Write-Host "Aciklama : PowerShell betigi tum kullanicilarin posta kutularina ulasan e-maillerin, konu basligina gore silinmesini saglamaktadir. " -ForegroundColor White
Write-Host ("+" * 50)


$username = Read-Host -Prompt "Global Admin User Name"
Read-Host -Prompt "Admin Password" -AsSecureString | ConvertFrom-SecureString | Out-File "./credential.txt"
$Password = Get-Content "./credential.txt" | ConvertTo-SecureString
$targetSubject = Read-Host -Prompt "Silinecek E-Posta Konusu"
$cred = New-Object System.Management.Automation.PSCredential ($username,$Password)



Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline -Credential $cred




$users = Get-Mailbox -ResultSize Unlimited | Select-Object -ExpandProperty UserPrincipalName
#$targetSubject = "E-posta Konusu"


foreach ($user in $users) {
    Search-Mailbox -Identity $user -SearchQuery "Subject:'$targetSubject'" -DeleteContent -Force
}

#Gelen mailleri konu başlığına göre tek tek silmek isterseniz aşağıdaki PowerShell Script kullanabilirsiniz.
#Search-Mailbox -Identity kullanici@doamin.com -SearchQuery 'Subject:"Silinecek öğenin konusu"' -DeleteContent

Remove-item ./credential.txt