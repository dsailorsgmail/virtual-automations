<script>

cd  \

mkdir userdatalog

echo  >>\userdatalog\logfile.txt
echo --- installing choco >>\userdatalog\logfile.txt
date /t >>\userdatalog\logfile.txt
echo  >>\userdatalog\logfile.txt

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

echo  >>\userdatalog\logfile.txt
echo --- installing puppet agent >>\userdatalog\logfile.txt
date /t >>\userdatalog\logfile.txt
echo  >>\userdatalog\logfile.txt
choco install -y puppet-agent >>\userdatalog\logfile.txt

echo  >>\userdatalog\logfile.txt
echo --- ending script >>\userdatalog\logfile.txt
echo  >>\userdatalog\logfile.txt
date /t >>\userdatalog\logfile.txt
echo  >>\userdatalog\logfile.txt

</script>
