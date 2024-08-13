$path = Read-Host -Prompt "Enter absolute path of file to verify"
$hash = Read-Host -Prompt "Enter checksum hash to verify against"
$hash = $hash.ToUpper()
$algo = Read-Host -Prompt "Enter algorithm of checksum hash"
$algo = $algo.ToUpper()
$is_g = (Get-FileHash $path -Algorithm $algo).Hash -eq $hash
if ($is_g) {
	Write-Output "File checksum verified!"
} else {
	Write-Output "Verification failed."
}
