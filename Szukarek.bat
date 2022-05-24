@echo off

:--- Zalozenie folderu na znalezione pliki ---

:0
set folder=%USERNAME%
if exist C:\Documents and Settings\All Users\Pulpit\%folder% echo folder o nazwie %folder% juz istnieje! & goto :0
C:\Documents and Settings\All Users\Pulpit\%folder%

:start
CLS

:--- Menu ---

echo MENU
echo ----------------------------------------------------------------------
echo  1 - Szukaj dokumentow z rozszerzeniem .odt (OpenOffice)
echo  2 - Szukaj dokumentow z rozszerzeniem .doc (MS Office Word)
echo  3 - Szukaj dokumentow z rozszerzeniem .ods (OpenOffice)
echo  4 - Szukaj arkuszy kalkulacyjnych z rozszerzeniem .xls (MS Office)
echo  5 - Szukaj dokumentow z rozszerzeniem .pdf (Acrobat Reader)
echo  6 - Szukaj zdjec z rozszerzeniem .jpg (Zdjecia)
echo  7 - Szukaj dokumentow z rozszerzeniem .docx (MS Office Wordx)
echo  8 - Szukaj arkuszy kalkulacyjnych z rozszerzeniem .xlsx (MS Office)
echo  9 - Koniec
echo ----------------------------------------------------------------------
echo Uwaga.
echo Znalezione pliki znajdziesz skopiowane na Pulpit, w folderze:  %folder%.
echo Czekaj na dzwiek oznaczajacy zakonczenie pracy skryptu.
echo ----------------------------------------------------------------------

:--- Zapytanie ---

set /p wyb="Wybierz nr. funkcji: "
if %wyb% EQU 9 goto dziewiec
if %wyb% EQU 8 goto osiem
if %wyb% EQU 7 goto siedem
if %wyb% EQU 6 goto szesc
if %wyb% EQU 5 goto piec
if %wyb% EQU 4 goto cztery
if %wyb% EQU 3 goto trzy
if %wyb% EQU 2 goto dwa
if %wyb% EQU 1 goto jeden

:--- Dzialanie dla wybranej funkcji ---

:jeden
md "C:\Documents and Settings\All Users\Pulpit\%folder%\OO-odt\"
for /f "delims=" %%a in ('dir "c:\*.odt" /s/a/b ^| find /i ".odt"') do (
copy "%%a" "C:\Documents and Settings\All Users\Pulpit\%folder%\OO-odt\"
)
start /i /min sndrec32.exe -play -close "C:\WINDOWS\Media\ding.wav"
goto :start

:dwa
md "C:\Documents and Settings\All Users\Pulpit\%folder%\MS-doc\"
for /f "delims=" %%a in ('dir "c:\*.doc" /s/a/b ^| find /i ".doc"') do (
copy "%%a" "C:\Documents and Settings\All Users\Pulpit\%folder%\MS-doc\"
)
start /i /min sndrec32.exe -play -close "C:\WINDOWS\Media\ding.wav"
goto :start

:trzy
md "C:\Documents and Settings\All Users\Pulpit\%folder%\OO-ods\"
for /f "delims=" %%a in ('dir "c:\*.ods" /s/a/b ^| find /i ".ods"') do (
copy "%%a" "C:\Documents and Settings\All Users\Pulpit\%folder%\OO-ods\"
)
start /i /min sndrec32.exe -play -close "C:\WINDOWS\Media\ding.wav"
goto :start

:cztery
md "C:\Documents and Settings\All Users\Pulpit\%folder%\MS-xls\"
for /f "delims=" %%a in ('dir "c:\*.xls" /s/a/b ^| find /i ".xls"') do (
copy "%%a" "C:\Documents and Settings\All Users\Pulpit\%folder%\MS-xls\"
)
start /i /min sndrec32.exe -play -close "C:\WINDOWS\Media\ding.wav"
goto :start

:piec
md "C:\Documents and Settings\All Users\Pulpit\%folder%\AcrobatReader-pdf\"
for /f "delims=" %%a in ('dir "c:\*.pdf" /s/a/b ^| find /i ".pdf"') do (
copy "%%a" "C:\Documents and Settings\All Users\Pulpit\%folder%\AcrobatReader-pdf\"
)
start /i /min sndrec32.exe -play -close "C:\WINDOWS\Media\ding.wav"
goto :start

:szesc
md "C:\Documents and Settings\All Users\Pulpit\%folder%\Foto-jpg\"
for /f "delims=" %%a in ('dir "c:\*.jpg" /s/a/b ^| find /i ".jpg"') do (
copy "%%a" "C:\Documents and Settings\All Users\Pulpit\%folder%\Foto-jpg\"
)
start /i /min sndrec32.exe -play -close "C:\WINDOWS\Media\ding.wav"
goto :start

:siedem
md "C:\Documents and Settings\All Users\Pulpit\%folder%\MS-docx\"
for /f "delims=" %%a in ('dir "c:\*.docx" /s/a/b ^| find /i ".docx"') do (
copy "%%a" "C:\Documents and Settings\All Users\Pulpit\%folder%\MS-docx\"
)
start /i /min sndrec32.exe -play -close "C:\WINDOWS\Media\ding.wav"
goto :start

:osiem
md "C:\Documents and Settings\All Users\Pulpit\%folder%\MS-xlsx\"
for /f "delims=" %%a in ('dir "c:\*.xlsx" /s/a/b ^| find /i ".xlsx"') do (
copy "%%a" "C:\Documents and Settings\All Users\Pulpit\%folder%\MS-xlsx\"
)
start /i /min sndrec32.exe -play -close "C:\WINDOWS\Media\ding.wav"
goto :start

:dziewiec
exit