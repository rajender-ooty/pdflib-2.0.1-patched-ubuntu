# Microsoft Developer Studio Project File - Name="Perl" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=Perl - Win32 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Perl.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Perl.mak" CFG="Perl - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Perl - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe
# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Perl___Win32_Release"
# PROP BASE Intermediate_Dir "Perl___Win32_Release"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ""
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "e:\src\AP517_source" /I "e:\src\AP517_source\win32" /I "e:\src\AP517_source\win32\include" /I "..\..\pdflib" /D "PERL_OBJECT" /D "WIN32" /D "PDFLIB_STATIC" /D CPerl=CPerlObj /YX /FD /GZ /c /Tp
# ADD CPP /nologo /ML /W3 /GX /I "e:\src\AP517_source" /I "e:\src\AP517_source\win32" /I "e:\src\AP517_source\win32\include" /I "..\..\pdflib" /D "PERL_OBJECT" /D "WIN32" /D "PDFLIB_EXPORTS" /D CPerl=CPerlObj /YX /FD /GZ /c /Tp
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x407 /d "_DEBUG"
# ADD RSC /l 0x407 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib perlcore.lib /nologo /dll /debug /machine:I386 /out:"pdflib.dll" /pdbtype:sept /libpath:"c:\programme\perl5.005\lib\CORE"
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib perlcore.lib /nologo /dll /machine:I386 /out:"pdflib.dll" /pdbtype:sept /libpath:"c:\programme\perl5.005\lib\CORE"
# SUBTRACT LINK32 /debug
# Begin Target

# Name "Perl - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\pdflib\p_afmparse.c
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_annots.c
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_basic.c
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_ccitt.c
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_color.c
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_draw.c
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_filter.c
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_font.c
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_gif.c
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_gstate.c
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_hyper.c
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_image.c
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_jpeg.c
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_text.c
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_tiff.c
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_util.c
# End Source File
# Begin Source File

SOURCE=.\pdflib_pl.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\..\pdflib\ansi_e.h
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\macrom_e.h
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_afmparse.h
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_config.h
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_intern.h
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\p_metrics.h
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\pdfdoc_e.h
# End Source File
# Begin Source File

SOURCE=..\..\pdflib\pdflib.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
