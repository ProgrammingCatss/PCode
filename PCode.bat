@echo off
call ifCodeis.bat
title PCode
cls
:setfile
echo Please type your Existing or New File name.
echo For Example: myfile
set /p filename=-
:commandsection
cls
echo fact   tells a fact about PCode
echo help   hopefully helps you
echo code   all the code you can use
echo gocode go code with PCode
set /p codemd=-
if %codemd% == fact goto superfact
if %codemd% == help goto superhelp
if %codemd% == code goto codelist
if %codemd% == gocode goto code
goto commandsection

:code
cls
echo Type Code!
echo Your file is %filename%.bat
set /p code=-
if %code% == ecof goto echff
if %code% == tell goto echommand
if %code% == q goto exqommand
if %code% == ques goto question
if %code% == tkeexe goto notreally
if %code% == yt goto notreally
goto doneques

:doneques
cls
echo Are you done?
set /p ayd1=(y/n)-
if %ayd1% == y goto exit
if %ayd1% == n goto code
if %ayd1% == Y goto exit
if %ayd1% == N goto code
goto code

:exit
exit

:question
cls
echo What is the "name" of the question command
set /p quesname=-
cls
echo What you want to ask?
set /p ask1=-
cls
echo If there are answers. Tell them here
set /p ask2=-
cls
echo If there are answers. Tell them here
set /p ask3=-
cls
echo If there are answers. Where they should go
set /p ask4=-
cls
echo If there are answers. Where they should go
set /p ask5=-
cls
echo set /p %quesname%=%ask1%- >> %filename%.bat
echo if %quesname% == %ask2% goto %ask4% >> %filename%.bat
echo if %quesname% == %ask3% goto %ask5% >> %filename%.bat
goto code

:exqommand
echo exit >> %filename%.bat
goto code

:tell
cls
echo What you want to tell?
set /p telluser=-
echo echo %telluser% >> %filename%.bat
goto code

:echff
echo @echo off >> %filename%.bat
goto code

:notreally
cls
echo You see this message because something
echo went wrong. PCode will restart.
timeout /t 5 /nobreak >nul
goto restart

:superfact
echo Did you know PCode is only
echo a helper to code Batch (.bat, .cmd)?
pause >nul
goto commandsection

:superhelp
echo Sorry will be available on
echo v0.0.5!
pause >nul
goto commandsection

:codelist
echo ecof             hides the code from the user (important)
echo tell             shows text that you tell the program to
echo q                closes your application when "q" is run
echo ques             tell the program to ask something from the user.
echo tkeexe           kills explorer.exe (don't worry. it will come back)
echo yt               searches youtube for something.
pause >nul
goto commandsection

:restart
cls
echo jk
pause >nul
exit
