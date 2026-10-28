@echo off
set "SELF=%~f0"
if not defined WT_SESSION if exist "%LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe" (
  start "JunkCleaner" wt.exe -d "%~dp0." cmd /k "clean_junk.bat %*"
  exit /b
)
if not defined WT_SESSION powershell -NoProfile -EncodedCommand JABjAG8AZABlACAAPQAgAEAAJwAKAHUAcwBpAG4AZwAgAFMAeQBzAHQAZQBtADsACgB1AHMAaQBuAGcAIABTAHkAcwB0AGUAbQAuAFIAdQBuAHQAaQBtAGUALgBJAG4AdABlAHIAbwBwAFMAZQByAHYAaQBjAGUAcwA7AAoAcAB1AGIAbABpAGMAIABzAHQAYQB0AGkAYwAgAGMAbABhAHMAcwAgAEMAbwBuAEYAbwBuAHQAIAB7AAoAIAAgAFsARABsAGwASQBtAHAAbwByAHQAKAAiAGsAZQByAG4AZQBsADMAMgAuAGQAbABsACIAKQBdACAAcAB1AGIAbABpAGMAIABzAHQAYQB0AGkAYwAgAGUAeAB0AGUAcgBuACAASQBuAHQAUAB0AHIAIABHAGUAdABDAG8AbgBzAG8AbABlAFcAaQBuAGQAbwB3ACgAKQA7AAoAIAAgAFsAUwB0AHIAdQBjAHQATABhAHkAbwB1AHQAKABMAGEAeQBvAHUAdABLAGkAbgBkAC4AUwBlAHEAdQBlAG4AdABpAGEAbAAsACAAQwBoAGEAcgBTAGUAdAA9AEMAaABhAHIAUwBlAHQALgBVAG4AaQBjAG8AZABlACkAXQAKACAAIABwAHUAYgBsAGkAYwAgAHMAdAByAHUAYwB0ACAARgBPAE4AVABfAEkATgBGAE8AXwBFAFgAIAB7ACAAcAB1AGIAbABpAGMAIAB1AGkAbgB0ACAAYwBiAFMAaQB6AGUAOwAgAHAAdQBiAGwAaQBjACAAdQBpAG4AdAAgAG4ARgBvAG4AdAA7ACAAcAB1AGIAbABpAGMAIABzAGgAbwByAHQAIABmAG8AbgB0AFMAaQB6AGUAWAA7ACAAcAB1AGIAbABpAGMAIABzAGgAbwByAHQAIABmAG8AbgB0AFMAaQB6AGUAWQA7ACAAcAB1AGIAbABpAGMAIAB1AGkAbgB0ACAAZgBvAG4AdABGAGEAbQBpAGwAeQA7ACAAcAB1AGIAbABpAGMAIAB1AGkAbgB0ACAAZgBvAG4AdABXAGUAaQBnAGgAdAA7ACAAWwBNAGEAcgBzAGgAYQBsAEEAcwAoAFUAbgBtAGEAbgBhAGcAZQBkAFQAeQBwAGUALgBCAHkAVgBhAGwAVABTAHQAcgAsACAAUwBpAHoAZQBDAG8AbgBzAHQAPQAzADIAKQBdACAAcAB1AGIAbABpAGMAIABzAHQAcgBpAG4AZwAgAGYAYQBjAGUATgBhAG0AZQA7ACAAfQAKACAAIABbAEQAbABsAEkAbQBwAG8AcgB0ACgAIgBrAGUAcgBuAGUAbAAzADIALgBkAGwAbAAiACwAIABDAGgAYQByAFMAZQB0AD0AQwBoAGEAcgBTAGUAdAAuAFUAbgBpAGMAbwBkAGUAKQBdACAAcAB1AGIAbABpAGMAIABzAHQAYQB0AGkAYwAgAGUAeAB0AGUAcgBuACAAYgBvAG8AbAAgAEcAZQB0AEMAdQByAHIAZQBuAHQAQwBvAG4AcwBvAGwAZQBGAG8AbgB0AEUAeAAoAEkAbgB0AFAAdAByACAAaAAsACAAYgBvAG8AbAAgAGIATQBhAHgALAAgAHIAZQBmACAARgBPAE4AVABfAEkATgBGAE8AXwBFAFgAIABmACkAOwAKACAAIABbAEQAbABsAEkAbQBwAG8AcgB0ACgAIgBrAGUAcgBuAGUAbAAzADIALgBkAGwAbAAiACwAIABDAGgAYQByAFMAZQB0AD0AQwBoAGEAcgBTAGUAdAAuAFUAbgBpAGMAbwBkAGUAKQBdACAAcAB1AGIAbABpAGMAIABzAHQAYQB0AGkAYwAgAGUAeAB0AGUAcgBuACAAYgBvAG8AbAAgAFMAZQB0AEMAdQByAHIAZQBuAHQAQwBvAG4AcwBvAGwAZQBGAG8AbgB0AEUAeAAoAEkAbgB0AFAAdAByACAAaAAsACAAYgBvAG8AbAAgAGIATQBhAHgALAAgAHIAZQBmACAARgBPAE4AVABfAEkATgBGAE8AXwBFAFgAIABmACkAOwAKAH0ACgAnAEAACgB0AHIAeQAgAHsACgAgACAAQQBkAGQALQBUAHkAcABlACAALQBUAHkAcABlAEQAZQBmAGkAbgBpAHQAaQBvAG4AIAAkAGMAbwBkAGUAIAAtAEUAcgByAG8AcgBBAGMAdABpAG8AbgAgAFMAdABvAHAACgAgACAAJABoACAAPQAgAFsAQwBvAG4ARgBvAG4AdABdADoAOgBHAGUAdABDAG8AbgBzAG8AbABlAFcAaQBuAGQAbwB3ACgAKQAKACAAIABpAGYAIAAoACQAaAAgAC0AbgBlACAAWwBJAG4AdABQAHQAcgBdADoAOgBaAGUAcgBvACkAIAB7AAoAIAAgACAAIAAkAGYAIAA9ACAATgBlAHcALQBPAGIAagBlAGMAdAAgAEMAbwBuAEYAbwBuAHQAKwBGAE8ATgBUAF8ASQBOAEYATwBfAEUAWAAKACAAIAAgACAAJABmAC4AYwBiAFMAaQB6AGUAIAA9ACAAWwBSAHUAbgB0AGkAbQBlAC4ASQBuAHQAZQByAG8AcABTAGUAcgB2AGkAYwBlAHMALgBNAGEAcgBzAGgAYQBsAF0AOgA6AFMAaQB6AGUATwBmACgAJABmACkACgAgACAAIAAgAGkAZgAgACgAWwBDAG8AbgBGAG8AbgB0AF0AOgA6AEcAZQB0AEMAdQByAHIAZQBuAHQAQwBvAG4AcwBvAGwAZQBGAG8AbgB0AEUAeAAoACQAaAAsACAAJABmAGEAbABzAGUALAAgAFsAcgBlAGYAXQAkAGYAKQApACAAewAKACAAIAAgACAAIAAgACQAZgAuAGYAYQBjAGUATgBhAG0AZQAgAD0AIAAnAE4AUwBpAG0AUwB1AG4AJwAKACAAIAAgACAAIAAgAFsAdgBvAGkAZABdAFsAQwBvAG4ARgBvAG4AdABdADoAOgBTAGUAdABDAHUAcgByAGUAbgB0AEMAbwBuAHMAbwBsAGUARgBvAG4AdABFAHgAKAAkAGgALAAgACQAZgBhAGwAcwBlACwAIABbAHIAZQBmAF0AJABmACkACgAgACAAIAAgAH0ACgAgACAAfQAKAH0AIABjAGEAdABjAGgAIAB7AH0ACgA=
chcp 65001 >nul 2>&1
for /f "tokens=*" %%A in ('chcp') do set "CPNOW=%%A"
for %%n in (%CPNOW%) do set "CPNUM=%%n"
if not "%CPNUM%"=="65001" echo [Warning] Console codepage is %CPNUM%, not UTF-8. Chinese may show as ?. Right-click title bar -^> Properties -^> Font -^> NSimSun.
setlocal EnableExtensions EnableDelayedExpansion
cd /d "%SystemRoot%" 2>nul
title 系统垃圾清理工具（安全版）

rem ==================================================================
rem  安全说明
rem   * 只清理“临时文件/缓存/日志/转储”等明确垃圾目录，
rem     绝不删除文档、桌面、下载、图片、收藏夹、已安装程序、注册表。
rem   * 被其它程序占用的文件会自动跳过，不会强制删除。
rem   * 不清理：Prefetch（清了反而变慢）、Windows.old、
rem     更新历史 SoftwareDistribution\DataStore、WinSxS 组件原始文件。
rem   * 建议先用 preview 预览将释放的空间，再实际执行。
rem
rem  用法
rem    clean_junk.bat            交互菜单
rem    clean_junk.bat preview    只统计不删除（无需管理员）
rem    clean_junk.bat quick      标准清理
rem    clean_junk.bat recycle    标准清理 + 清空回收站
rem    clean_junk.bat full       深度清理（回收站+浏览器缓存+日志+转储）
rem    clean_junk.bat dism       整理系统组件存储（耗时较长，可选）
rem ==================================================================

set "ARG=%~1"
if not defined ARG set "ARG=menu"
if /i "%ARG%"=="menu" goto :MENU

:DERIVE
set "PREVIEW=0"
set "DO_RECYCLE=0"
set "DO_BROWSER=0"
set "DO_DEEP=0"
set "DO_DISM=0"
if /i "%ARG%"=="preview" set "PREVIEW=1"
if /i "%ARG%"=="recycle" set "DO_RECYCLE=1"
if /i "%ARG%"=="full" (
  set "DO_RECYCLE=1"
  set "DO_BROWSER=1"
  set "DO_DEEP=1"
)
if /i "%ARG%"=="dism" set "DO_DISM=1"
goto :ELEVATE

:MENU
fsutil dirty query %SystemDrive% >nul 2>&1
if not errorlevel 1 goto :MENU_SHOW
echo 正在请求管理员权限，请在弹出窗口中点击“是”继续...
powershell -NoProfile -Command "Start-Process -FilePath '%SELF%' -Verb RunAs -ArgumentList 'menu'"
exit /b

:MENU_SHOW
cls
echo ============================================================
echo            系统垃圾清理工具（安全版）
echo ============================================================
echo    只清理临时文件与缓存垃圾，绝不删除你的个人数据。
echo.
echo    [1] 标准清理（推荐）
echo    [2] 标准清理 + 清空回收站
echo    [3] 深度清理（+浏览器缓存 + 系统日志 + 崩溃转储）
echo    [4] 仅预览（统计可清理空间，不删除文件）
echo    [5] 整理系统组件存储 DISM（可选，10~30 分钟）
echo    [0] 退出
echo ============================================================
choice /c 123450 /n /m "请选择 [1-5, 0=退出]: "
if errorlevel 6 goto :EOF
if errorlevel 5 (set "ARG=dism" & goto :DERIVE)
if errorlevel 4 (set "ARG=preview" & goto :DERIVE)
if errorlevel 3 (set "ARG=full" & goto :DERIVE)
if errorlevel 2 (set "ARG=recycle" & goto :DERIVE)
if errorlevel 1 (set "ARG=quick" & goto :DERIVE)
goto :EOF

:ELEVATE
if "%PREVIEW%"=="1" goto :START
fsutil dirty query %SystemDrive% >nul 2>&1
if not errorlevel 1 goto :START
echo 正在请求管理员权限，请在弹出窗口中点击“是”继续...
powershell -NoProfile -Command "Start-Process -FilePath '%SELF%' -Verb RunAs -ArgumentList '%ARG%'"
exit /b

:START
cls
set "TOTAL_KB=0"
if "%DO_DISM%"=="1" goto :RUNDISM
if "%PREVIEW%"=="1" (
  echo  [预览模式] 仅统计可清理空间，不删除任何文件。
) else (
  echo  开始清理垃圾文件，被占用的文件将自动跳过...
)

echo.
echo  [1/6] 临时文件
call :CLEAN "会话临时目录" "%TEMP%"
for /d %%U in ("%SystemDrive%\Users\*") do call :CLEAN_USER_TEMP "%%~fU"
call :CLEAN "系统临时目录" "%SystemRoot%\Temp"

echo.
echo  [2/6] Windows 更新与传递优化缓存
set "UPDDIR=%SystemRoot%\SoftwareDistribution\Download"
set "SVCSTOPPED=0"
if not "%PREVIEW%"=="1" if exist "%UPDDIR%\*" (
  net stop wuauserv /y >nul 2>&1
  net stop bits /y >nul 2>&1
  net stop dosvc /y >nul 2>&1
  set "SVCSTOPPED=1"
)
call :CLEAN "Windows 更新下载缓存" "%UPDDIR%"
call :CLEAN "传递优化缓存" "%SystemRoot%\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Cache"
if "%SVCSTOPPED%"=="1" (
  net start dosvc >nul 2>&1
  net start bits >nul 2>&1
  net start wuauserv >nul 2>&1
)

echo.
echo  [3/6] 系统错误报告与缩略图缓存
for /d %%U in ("%SystemDrive%\Users\*") do call :CLEAN_USER_STD "%%~fU"
call :CLEAN "系统错误报告(公共)" "%ProgramData%\Microsoft\Windows\WER"

if "%DO_DEEP%"=="1" (
  echo.
  echo  [4/6] 深度清理：系统日志与崩溃转储
  for /d %%U in ("%SystemDrive%\Users\*") do call :CLEAN_USER_DEEP "%%~fU"
  call :CLEAN "系统安装日志 Panther" "%SystemRoot%\Panther"
  call :CLEAN "组件服务日志 CBS" "%SystemRoot%\Logs\CBS"
  call :CLEAN "Windows 更新日志" "%SystemRoot%\Logs\WindowsUpdate"
  call :CLEAN "内核转储 Minidump" "%SystemRoot%\Minidump"
  call :CLEAN "内存转储 MEMORY.DMP" "%SystemRoot%\MEMORY.DMP"
)

if "%DO_BROWSER%"=="1" (
  echo.
  echo  [5/6] 深度清理：浏览器缓存（建议先关闭浏览器）
  for /d %%U in ("%SystemDrive%\Users\*") do call :CLEAN_USER_BROWSER "%%~fU"
)

if "%DO_RECYCLE%"=="1" (
  echo.
  echo  [6/6] 回收站
  call :CLEAN_RECYCLE
)

:SUMMARY
echo.
echo  ============================================================
call :FMTKB %TOTAL_KB%
if "%PREVIEW%"=="1" (
  echo    预计可释放空间:  !_H!
) else (
  echo    实际已释放空间:  !_H!
)
echo    未列出 = 该项没有垃圾或为空；被占用的文件已自动跳过。
echo    未触碰: 文档/桌面/下载/图片/收藏夹、已安装程序、注册表、
echo            Prefetch、Windows.old、更新历史记录。
echo  ============================================================
pause
goto :EOF

:RUNDISM
echo  整理系统组件存储(WinSxS)，可能需要 10~30 分钟，请耐心等待。
echo  该操作不会删除个人文件，完成后会有提示。
echo.
dism /Online /Cleanup-Image /StartComponentCleanup
echo.
echo  完成。
pause
goto :EOF

rem ======================= 清理核心 =======================

:CLEAN
set "_N=%~1"
set "SZ_DIR=%~2"
set "SZ_FILTER=%~3"
set "SZ_MODE="
if not defined SZ_DIR (set "SZ_FILTER=" & exit /b)
rem 安全阀：必须是 "盘符:\子路径"，拒绝盘符根目录和UNC路径
if not "%SZ_DIR:~1,1%"==":" (set "SZ_FILTER=" & exit /b)
if "%SZ_DIR:~3%"=="" (set "SZ_FILTER=" & exit /b)
if defined SZ_FILTER (
  if not exist "%SZ_DIR%\%SZ_FILTER%" (set "SZ_FILTER=" & exit /b)
) else (
  if not exist "%SZ_DIR%\" (set "SZ_FILTER=" & exit /b)
)
call :SIZE
if not defined SZ_FILTER if "%KB%"=="0" if not exist "%SZ_DIR%\*" (set "SZ_FILTER=" & exit /b)
if "%PREVIEW%"=="1" (
  if not "%KB%"=="0" call :REPORT "%_N%" %KB% "预览：未删除"
  set "SZ_FILTER="
  exit /b
)
set "_KB0=%KB%"
call :DELPS
call :SIZE
set /a "_FKB=_KB0-KB"
if %_FKB% LEQ 0 (set "SZ_FILTER=" & exit /b)
if "%KB%"=="0" (
  call :REPORT "%_N%" %_FKB% "已清理"
) else (
  call :REPORT "%_N%" %_FKB% "部分被占用，已跳过"
)
set "SZ_FILTER="
exit /b

:SIZE
set "KB=0"
for /f %%A in ('powershell -NoProfile -Command "$dir=$env:SZ_DIR; $filter=$env:SZ_FILTER; $roots=@(); if($env:SZ_MODE -eq 'recycle'){ foreach($d in (Get-CimInstance Win32_LogicalDisk -Filter DriveType=3)){ $p=$d.DeviceID+'\$Recycle.Bin'; if([System.IO.Directory]::Exists($p)){ $roots+=$p } } } elseif($dir){ if([System.IO.Directory]::Exists($dir)){ $roots+=$dir } }; $stack=New-Object System.Collections.Stack; foreach($r in $roots){ [void]$stack.Push($r) }; $s=[int64]0; while($stack.Count){ $cur=[string]$stack.Pop(); try{ foreach($e in [System.IO.Directory]::EnumerateFileSystemEntries($cur)){ try{ $a=[System.IO.File]::GetAttributes($e); if($a -band [System.IO.FileAttributes]::Directory){ if(-not ($a -band [System.IO.FileAttributes]::ReparsePoint)){ [void]$stack.Push($e) } } else { if($filter){ if([System.IO.Path]::GetFileName($e) -notlike $filter){ continue } }; $s+=([System.IO.FileInfo]$e).Length } }catch{} } }catch{} }; [long][math]::Round($s/1KB)" 2^>nul') do set "KB=%%A"
exit /b

rem 递归删除：跳过目录联接(不穿透)、容错损坏链接、保留目标目录本身
:DELPS
powershell -NoProfile -Command "$dir=$env:SZ_DIR; $filter=$env:SZ_FILTER; $stack=New-Object System.Collections.Stack; [void]$stack.Push($dir); $dirs=New-Object System.Collections.Stack; while($stack.Count){ $cur=[string]$stack.Pop(); if($cur -ne $dir){ [void]$dirs.Push($cur) }; try{ foreach($e in [System.IO.Directory]::EnumerateFileSystemEntries($cur)){ try{ $a=[System.IO.File]::GetAttributes($e); if($a -band [System.IO.FileAttributes]::Directory){ if($a -band [System.IO.FileAttributes]::ReparsePoint){ try{ [System.IO.Directory]::Delete($e,$false) }catch{} } else { [void]$stack.Push($e) } } else { if($filter){ if([System.IO.Path]::GetFileName($e) -notlike $filter){ continue } }; if($a -band [System.IO.FileAttributes]::ReadOnly){ try{ [System.IO.File]::SetAttributes($e,[System.IO.FileAttributes]::Normal) }catch{} }; try{ [System.IO.File]::Delete($e) }catch{} } }catch{} } }catch{} }; if(-not $filter){ while($dirs.Count){ $d=[string]$dirs.Pop(); try{ [System.IO.Directory]::Delete($d,$false) }catch{} } }" >nul 2>&1
exit /b

:REPORT
call :FMTKB %~2
echo    %~1  ——  !_H!   %~3
set /a "TOTAL_KB=TOTAL_KB+%~2"
exit /b

:FMTKB
set "_Q=%~1"
if not defined _Q set "_Q=0"
if !_Q! GEQ 1048576 (
  set /a "_N=(_Q*100)/1048576"
  set "_H=!_N:~0,-2!.!_N:~-2! GB"
  exit /b
)
if !_Q! GEQ 1024 (
  set /a "_N=(_Q*10)/1024"
  set "_H=!_N:~0,-1!.!_N:~-1! MB"
  exit /b
)
set "_H=!_Q! KB"
exit /b

rem ======================= 各用户配置文件 =======================

:CLEAN_USER_TEMP
call :PROFILE_OK "%~1" || exit /b
set "UT=%~1\AppData\Local\Temp"
if /i "!UT!"=="%TEMP%" exit /b
call :CLEAN "用户临时文件 - %~nx1" "!UT!"
exit /b

:CLEAN_USER_STD
call :PROFILE_OK "%~1" || exit /b
set "UL=%~1\AppData\Local"
call :CLEAN "系统错误报告 - %~nx1" "!UL!\Microsoft\Windows\WER"
call :CLEAN "缩略图缓存 - %~nx1" "!UL!\Microsoft\Windows\Explorer" "thumbcache_*.db"
call :CLEAN "旧版Web缓存 - %~nx1" "!UL!\Microsoft\Windows\INetCache"
exit /b

:CLEAN_USER_DEEP
call :PROFILE_OK "%~1" || exit /b
call :CLEAN "应用崩溃转储 - %~nx1" "%~1\AppData\Local\CrashDumps"
exit /b

:CLEAN_USER_BROWSER
call :PROFILE_OK "%~1" || exit /b
set "UB=%~1\AppData\Local"
for %%B in ("Google\Chrome" "Microsoft\Edge" "BraveSoftware\Brave-Browser" "Vivaldi") do (
  for /d %%P in ("!UB!\%%~B\User Data\*") do (
    call :CLEAN "%%~nxB缓存[%%~nxP]" "%%~fP\Cache"
    call :CLEAN "%%~nxB Code缓存[%%~nxP]" "%%~fP\Code Cache"
    call :CLEAN "%%~nxB GPU缓存[%%~nxP]" "%%~fP\GPUCache"
    call :CLEAN "%%~nxB SW缓存[%%~nxP]" "%%~fP\Service Worker\CacheStorage"
    call :CLEAN "%%~nxB Dawn缓存[%%~nxP]" "%%~fP\DawnCache"
  )
)
for /d %%P in ("!UB!\Mozilla\Firefox\Profiles\*") do (
  call :CLEAN "Firefox缓存[%%~nxP]" "%%~fP\cache2"
)
for /d %%P in ("%~1\AppData\Roaming\Opera Software\*") do (
  call :CLEAN "Opera缓存[%%~nxP]" "%%~fP\Cache"
)
exit /b

:CLEAN_RECYCLE
set "SZ_DIR=RecycleBin"
set "SZ_FILTER="
set "SZ_MODE=recycle"
call :SIZE
if "%PREVIEW%"=="1" (
  if not "%KB%"=="0" call :REPORT "回收站" %KB% "预览：未清空"
  set "SZ_MODE="
  exit /b
)
set "_KB0=%KB%"
powershell -NoProfile -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue" >nul 2>&1
call :SIZE
set "SZ_MODE="
set /a "_FKB=_KB0-KB"
if %_FKB% LEQ 0 exit /b
call :REPORT "回收站" %_FKB% "已清空"
exit /b

:PROFILE_OK
if /i "%~nx1"=="All Users" exit /b 1
if /i "%~nx1"=="Default User" exit /b 1
exit /b 0
