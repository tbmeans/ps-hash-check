$path1 = Read-Host -Prompt "Enter absolute path of file to verify"
$path2 = Read-Host -Prompt "Enter absolute path of file containing checksum"
$fcont = Get-Content -Path $path2 -Raw
$hash = $fcont.Substring(0, $fcont.indexOf(' '))
$algo = $path2.Substring($path2.LastIndexOf('.') + 1).ToUpper()
$is_g = (Get-FileHash $path1 -Algorithm $algo).Hash -eq $hash
if ($is_g) {
	Write-Output "File checksum verified!"
} else {
	Write-Output "Verification failed."
}
pause
