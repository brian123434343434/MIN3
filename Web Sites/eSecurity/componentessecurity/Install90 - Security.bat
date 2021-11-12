

:: eSecurity
gacutil.exe /u Gattaca.Entity.eSecurity,Version=9.0.0.0,Culture=neutral,PublicKeyToken=2EC6C6A7A83DFD1F
gacutil.exe /u Gattaca.Interfaces.eSecurity,Version=9.0.0.0,Culture=neutral,PublicKeyToken=2EC6C6A7A83DFD1F
gacutil.exe /u Gattaca.Application.eSecurity,Version=9.0.0.0,Culture=neutral,PublicKeyToken=2EC6C6A7A83DFD1F
gacutil.exe /u Gattaca.Factory.eSecurity,Version=9.0.0.0,Culture=neutral,PublicKeyToken=2EC6C6A7A83DFD1F
gacutil.exe /u Gattaca.Facade.eSecurity,Version=9.0.0.0,Culture=neutral,PublicKeyToken=2EC6C6A7A83DFD1F

gacutil.exe  /if "%CD%\com90\Gattaca.Entity.eSecurity.dll"
gacutil.exe  /if "%CD%\com90\Gattaca.Interfaces.eSecurity.dll"
gacutil.exe  /if "%CD%\com90\Gattaca.Application.eSecurity.dll"
"C:\Windows\Microsoft.NET\Framework\v2.0.50727\"RegSvcs.exe "%CD%\com90\Gattaca.Application.eSecurity.dll"
gacutil.exe  /if "%CD%\com90\Gattaca.Factory.eSecurity.dll"
gacutil.exe  /if "%CD%\com90\Gattaca.Facade.eSecurity.dll"





pause