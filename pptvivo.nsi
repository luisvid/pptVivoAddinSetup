; pptVivoSetup.nsi
;
; This script is perhaps one of the simplest NSIs you can make. All of the
; optional settings are left to their default settings. The installer simply 
; prompts the user asking them where to install, and drops a copy of example1.nsi
; there. 

;--------------------------------

; The name of the installer
Name "pptVivo! Addin Setup"

; The file to write
OutFile "pptVivoSetup.exe"

; The default installation directory
;InstallDir $DESKTOP\Example1
InstallDir $TEMP\pptVivo

; Request application privileges for Windows Vista
RequestExecutionLevel user

; uncomment the following line to make the installer silent by default.
SilentInstall silent

;--------------------------------

; Pages

Page directory
Page instfiles

;--------------------------------

; The stuff to install
Section "" ;No components page, name is not important

  ; Set output path to the installation directory.
  SetOutPath "$INSTDIR\resources"
  SetOverwrite off
  
  ; Put file there
  File "setup.exe"
  File "pptVivo2007Setup.msi"

  Exec "$INSTDIR\resources\setup.exe"  

SectionEnd ; end the section
