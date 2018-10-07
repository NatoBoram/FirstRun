@Echo Off
CD %UserProfile%/Downloads

REM Google
Start /Min PowerShell "Start-BitsTransfer -Source https://github.com/google/fonts/archive/master.zip -Destination Google.zip; Expand-Archive Google.zip -dest Google; Remove-Item Google.zip; MkDir FontsGoogle; Get-ChildItem -Path Google -Filter *.ttf -Recurse | Move-Item -Destination FontsGoogle -Force; Remove-Item Google -Recurse;" /MIN

REM Noto
Start /Min PowerShell "Start-BitsTransfer -Source https://noto-website-2.storage.googleapis.com/pkgs/Noto-hinted.zip -Destination Noto.zip; Expand-Archive Noto.zip -dest Noto; Remove-Item Noto.zip; MkDir FontsNoto; Get-ChildItem -Path Noto -Filter *.ttf -Recurse | Move-Item -Destination FontsNoto -Force; Remove-Item Noto -Recurse;"

REM Comic Neue
Start /Min PowerShell "Start-BitsTransfer -Source http://comicneue.com/comic-neue-2.3.zip -Destination ComicNeue.zip; Expand-Archive ComicNeue.zip -dest ComicNeue; Remove-Item ComicNeue.zip; Get-ChildItem -Filter *MACOSX* -Recurse | Remove-Item -Recurse; MkDir FontsComicNeue; Get-ChildItem -Path ComicNeue -Filter *.otf -Recurse | Move-Item -Destination FontsComicNeue -Force; Remove-Item ComicNeue -Recurse;"

Exit
