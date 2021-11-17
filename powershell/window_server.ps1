#주요통신기반시설 윈도우 서버

$text_path = "C:\Seedgen\temp.txt"
Write-Output "■ W-01.     1. 계정관리 > 1.1 Administrator 계정 이름 변경 또는 보안성 강화" | Out-File -FilePath $text_path
Write-Output "■ 기준: Administrator Default 계정 이름을 변경하거나 강화된 비밀번호를 적용한 경우 양호" | Out-File -Append -FilePath $text_path
Write-Output "■ 현황" | Out-File -Append -FilePath $text_path

net user | findstr /i "administrator"
if ( $LASTEXITCODE -eq 0 ) {
    Write-Output "W-01,X,," | Out-File -Append -FilePath $text_path
    Write-Output "Administrator Default 계정 이름을 변경하지 않거나 단순 비밀번호를 적용하였으므로 취약함" | Out-File -Append -FilePath $text_path
} else {
    Write-Output "W-01,O,," | Out-File -Append -FilePath $text_path
    Write-Output "Administrator Default 계정 이름을 변경하거나 강화된 비밀번호를 적용하였으므로 양호함" | Out-File -Append -FilePath $text_path
}