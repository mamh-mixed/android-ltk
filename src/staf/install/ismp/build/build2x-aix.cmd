
staf local monitor log message "Starting to execute build-aix.cmd"

del C:\STAF_ISMP_InputFiles\build\*.* /s /q
rmdir C:\STAF_ISMP_InputFiles\build /s /q

staf local monitor log message "Adding required empty directories"

REM add required empty WIN32 build directories
md C:\STAF_ISMP_InputFiles\build\bin\win32
md C:\STAF_ISMP_InputFiles\build\lib\base\win32
md C:\STAF_ISMP_InputFiles\build\codepage\win32
md C:\STAF_ISMP_InputFiles\build\bin-log\win32
md C:\STAF_ISMP_InputFiles\build\bin-mon\win32
md C:\STAF_ISMP_InputFiles\build\bin-pool\win32
md C:\STAF_ISMP_InputFiles\build\bin-zip\win32
md C:\STAF_ISMP_InputFiles\build\include\win32
md C:\STAF_ISMP_InputFiles\build\bin-java\win32
md C:\STAF_ISMP_InputFiles\build\bin-jstaf\win32
md C:\STAF_ISMP_InputFiles\build\bin-rexx\win32
md C:\STAF_ISMP_InputFiles\build\lib-rexx\win32
md C:\STAF_ISMP_InputFiles\build\bin-tcl\win32
md C:\STAF_ISMP_InputFiles\build\bin-python\win32
md C:\STAF_ISMP_InputFiles\build\bin-perl\win32
md C:\STAF_ISMP_InputFiles\build\lib-perl56\win32
md C:\STAF_ISMP_InputFiles\build\lib-perl58\win32
md C:\STAF_ISMP_InputFiles\build\docs\common-python

REM add required empty LINUX build directories
md C:\STAF_ISMP_InputFiles\build\bin\linux
md C:\STAF_ISMP_InputFiles\build\lib\base\linux
md C:\STAF_ISMP_InputFiles\build\codepage\linux
md C:\STAF_ISMP_InputFiles\build\lib-log\linux
md C:\STAF_ISMP_InputFiles\build\lib-mon\linux
md C:\STAF_ISMP_InputFiles\build\lib-pool\linux
md C:\STAF_ISMP_InputFiles\build\lib-zip\linux
md C:\STAF_ISMP_InputFiles\build\include\linux
md C:\STAF_ISMP_InputFiles\build\lib-java\linux
md C:\STAF_ISMP_InputFiles\build\lib-jstaf\linux
md C:\STAF_ISMP_InputFiles\build\lib-rexx\linux
md C:\STAF_ISMP_InputFiles\build\lib-tcl\linux
md C:\STAF_ISMP_InputFiles\build\lib-python\linux
md C:\STAF_ISMP_InputFiles\build\bin-perl\linux
md C:\STAF_ISMP_InputFiles\build\lib-perl58\linux
md C:\STAF_ISMP_InputFiles\build\lib-perl56\linux
md C:\STAF_ISMP_InputFiles\build\lib-perl50\linux
md C:\STAF_ISMP_InputFiles\build\codepage\linux-optional
md C:\STAF_ISMP_InputFiles\build\docs\common-perl
md C:\STAF_ISMP_InputFiles\build\docs\common-tcl

REM add required empty Solaris build directories
md C:\STAF_ISMP_InputFiles\build\bin\solaris
md C:\STAF_ISMP_InputFiles\build\lib\base\solaris
md C:\STAF_ISMP_InputFiles\build\codepage\solaris
md C:\STAF_ISMP_InputFiles\build\lib-log\solaris
md C:\STAF_ISMP_InputFiles\build\lib-mon\solaris
md C:\STAF_ISMP_InputFiles\build\lib-pool\solaris
md C:\STAF_ISMP_InputFiles\build\lib-zip\solaris
md C:\STAF_ISMP_InputFiles\build\include\solaris
md C:\STAF_ISMP_InputFiles\build\lib-java\solaris
md C:\STAF_ISMP_InputFiles\build\lib-jstaf\solaris
md C:\STAF_ISMP_InputFiles\build\codepage\solaris-optional

REM add required empty hpux build directories
md C:\STAF_ISMP_InputFiles\build\bin\hpux
md C:\STAF_ISMP_InputFiles\build\lib\base\hpux
md C:\STAF_ISMP_InputFiles\build\codepage\hpux
md C:\STAF_ISMP_InputFiles\build\lib-log\hpux
md C:\STAF_ISMP_InputFiles\build\lib-mon\hpux
md C:\STAF_ISMP_InputFiles\build\lib-pool\hpux
md C:\STAF_ISMP_InputFiles\build\lib-zip\hpux
md C:\STAF_ISMP_InputFiles\build\include\hpux
md C:\STAF_ISMP_InputFiles\build\lib-java\hpux
md C:\STAF_ISMP_InputFiles\build\lib-jstaf\hpux
md C:\STAF_ISMP_InputFiles\build\codepage\hpux-optional

staf local monitor log message "Copying aix files to input file directory"

md C:\STAF_ISMP_InputFiles\build
md C:\STAF_ISMP_InputFiles\build\bin\aix

REM BIN AIX files
copy C:\STAF_ISMP_InputFiles\aix\bin\STAF C:\STAF_ISMP_InputFiles\build\bin\aix\*.*
copy C:\STAF_ISMP_InputFiles\aix\bin\STAFProc C:\STAF_ISMP_InputFiles\build\bin\aix\*.*
copy C:\STAF_ISMP_InputFiles\aix\bin\STAFReg C:\STAF_ISMP_InputFiles\build\bin\aix\*.*
copy C:\STAF_ISMP_InputFiles\aix\bin\FmtLog C:\STAF_ISMP_InputFiles\build\bin\aix\*.*
copy C:\STAF_ISMP_InputFiles\aix\bin\STAF.cmd C:\STAF_ISMP_InputFiles\build\bin\aix\*.*

REM LIB BASE AIX files
md C:\STAF_ISMP_InputFiles\build\lib\base\aix
copy C:\STAF_ISMP_InputFiles\aix\lib\libSTAF.so C:\STAF_ISMP_InputFiles\build\lib\base\aix\*.*
copy C:\STAF_ISMP_InputFiles\aix\lib\libSTAFDSLS.so C:\STAF_ISMP_InputFiles\build\lib\base\aix\*.*

REM CODEPAGE AIX files
md C:\STAF_ISMP_InputFiles\build\codepage\aix
copy C:\STAF_ISMP_InputFiles\aix\codepage\alias.txt C:\STAF_ISMP_InputFiles\build\codepage\aix\*.*
copy C:\STAF_ISMP_InputFiles\aix\codepage\ibm-437.bin C:\STAF_ISMP_InputFiles\build\codepage\aix\*.*
copy C:\STAF_ISMP_InputFiles\aix\codepage\ibm-850.bin C:\STAF_ISMP_InputFiles\build\codepage\aix\*.*

REM Log Service AIX files
md C:\STAF_ISMP_InputFiles\build\lib-log\aix
copy C:\STAF_ISMP_InputFiles\aix\lib\libSTAFLog.so C:\STAF_ISMP_InputFiles\build\lib-log\aix\*.*

REM Monitor Service AIX files
md C:\STAF_ISMP_InputFiles\build\lib-mon\aix
copy C:\STAF_ISMP_InputFiles\aix\lib\libSTAFMon.so C:\STAF_ISMP_InputFiles\build\lib-mon\aix\*.*

REM Respool service AIX files
md C:\STAF_ISMP_InputFiles\build\lib-pool\aix
copy C:\STAF_ISMP_InputFiles\aix\lib\libSTAFPool.so C:\STAF_ISMP_InputFiles\build\lib-pool\aix\*.*

REM Zip service AIX files
md C:\STAF_ISMP_InputFiles\build\lib-zip\aix
copy C:\STAF_ISMP_InputFiles\aix\lib\libSTAFZip.so C:\STAF_ISMP_InputFiles\build\lib-zip\aix\*.*
copy C:\STAF_ISMP_InputFiles\aix\lib\libSTAFZlib.so C:\STAF_ISMP_InputFiles\build\lib-zip\aix\*.*

REM C++ AIX files
md C:\STAF_ISMP_InputFiles\build\include\aix
copy C:\STAF_ISMP_InputFiles\aix\include\STAFOSTypes.h C:\STAF_ISMP_InputFiles\build\include\aix\*.*
md C:\STAF_ISMP_InputFiles\build\include\common
copy C:\STAF_ISMP_InputFiles\win32\include\STAF.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAF_fstream.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAF_iostream.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFDynamicLibrary.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFDynamicLibraryInlImpl.cpp C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFError.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFEventSem.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFEventSemInlImpl.cpp C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFException.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFInlImpl.cpp C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFMutexSem.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFMutexSemInlImpl.cpp C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFRefPtr.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFString.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFStringInlImpl.cpp C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFThread.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFTimestamp.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFTimestampInlImpl.cpp C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFUtil.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFFileSystem.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFFileSystemInlImpl.cpp C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFLogService.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFMonitorService.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFResPoolService.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFProcess.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFProcessInlImpl.cpp C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFTrace.h C:\STAF_ISMP_InputFiles\build\include\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFTraceInlImpl.cpp C:\STAF_ISMP_InputFiles\build\include\common\*.*

REM JAVA LIB AIX files
md C:\STAF_ISMP_InputFiles\build\lib-java\aix
copy C:\STAF_ISMP_InputFiles\aix\lib\libJSTAF.so C:\STAF_ISMP_InputFiles\build\lib-java\aix\*.*
copy C:\STAF_ISMP_InputFiles\aix\lib\libJSTAFSH.so C:\STAF_ISMP_InputFiles\build\lib-java\aix\*.*

REM JSTAF LIB AIX files
md C:\STAF_ISMP_InputFiles\build\lib-jstaf\aix
copy C:\STAF_ISMP_InputFiles\aix\lib\JSTAF.zip C:\STAF_ISMP_InputFiles\build\lib-jstaf\aix\*.*
copy C:\STAF_ISMP_InputFiles\aix\lib\JSTAF.jar C:\STAF_ISMP_InputFiles\build\lib-jstaf\aix\*.*

REM REXX LIB AIX files
md C:\STAF_ISMP_InputFiles\build\lib-rexx\aix
copy C:\STAF_ISMP_InputFiles\aix\lib\libRXSTAF.so C:\STAF_ISMP_InputFiles\build\lib-rexx\aix\*.*
copy C:\STAF_ISMP_InputFiles\aix\lib\libRxThread.so C:\STAF_ISMP_InputFiles\build\lib-rexx\aix\*.*

REM DOCS COMMON files
md C:\STAF_ISMP_InputFiles\build\docs\common
copy C:\STAF_ISMP_InputFiles\win32\docs\History C:\STAF_ISMP_InputFiles\build\docs\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\docs\STAFCMDS.htm C:\STAF_ISMP_InputFiles\build\docs\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\docs\STAFFAQ.htm C:\STAF_ISMP_InputFiles\build\docs\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\docs\STAFHome.htm C:\STAF_ISMP_InputFiles\build\docs\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\docs\STAFRC.htm C:\STAF_ISMP_InputFiles\build\docs\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\docs\STAFUG.htm C:\STAF_ISMP_InputFiles\build\docs\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\docs\STAFGS.pdf C:\STAF_ISMP_InputFiles\build\docs\common\*.*

REM SAMPLES/DEMOS COMMON files
md C:\STAF_ISMP_InputFiles\build\samples\common
xcopy /s C:\STAF_ISMP_InputFiles\win32\samples\*.* C:\STAF_ISMP_InputFiles\build\samples\common\*.*

REM SERVICE DEV INCLUDE COMMON files
md C:\STAF_ISMP_InputFiles\build\include\service-dev\common
copy C:\STAF_ISMP_InputFiles\win32\include\STAFCommandParser.h C:\STAF_ISMP_InputFiles\build\include\service-dev\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFCommandParserInlImpl.cpp C:\STAF_ISMP_InputFiles\build\include\service-dev\common\*.*
copy C:\STAF_ISMP_InputFiles\win32\include\STAFServiceInterface.h C:\STAF_ISMP_InputFiles\build\include\service-dev\common\*.*

REM SERVICE DEV LIB COMMON files
md C:\STAF_ISMP_InputFiles\build\lib\service-dev\common
copy C:\STAF_ISMP_InputFiles\win32\lib\service.def C:\STAF_ISMP_InputFiles\build\lib\service-dev\common\*.*

REM OPTIONAL CODEPAGES AIX
md C:\STAF_ISMP_InputFiles\build\codepage\aix-optional
copy C:\STAF_ISMP_InputFiles\aix\codepage\*.* C:\STAF_ISMP_InputFiles\build\codepage\aix-optional\*.*

staf local monitor log message "Starting the aix ISMP build"

cd C:\ISMP503
java -cp .;C:\ISMP503\lib\idewizards.jar;C:\ISMP503\lib\ProjectWizard.jar;C:\ISMP503\ppk\win32ppk.jar;C:\ISMP503\ppk\linuxppk.jar;C:\ISMP503\ppk\solarisppk.jar;C:\ISMP503\ppk\hpuxppk.jar;C:\ISMP503\ppk\aixppk.jar;C:\ISMP503\ppk\os2ppk.jar;C:\ISMP503\ppk\cimppk.jar;C:\ISMP503\ppk\as400ppk.jar;C:\ISMP503\ppk\webppk.jar;C:\ISMP503\classes;C:\ISMP503\classes\MyCustomBeans.jar;C:\ISMP503\lib\ide.jar;C:\ISMP503\lib\wizard.jar;C:\ISMP503\lib\product.jar;C:\ISMP503\lib\platform.jar;C:\ISMP503\lib\help.jar;C:\ISMP503\lib\swing.jar;C:\ISMP503\lib\jhall.jar;C:\ISMP503\lib\parser.jar;C:\ISMP503\lib\xt.jar;C:\ISMP503\lib\icebrowserbean.jar;C:\ISMP503\lib\icebrowserlitebean.jar;C:\ISMP503\ppk\macosxppk.jar;C:\ISMP503\ppk\genericunixppk.jar;C:\ISMP503\i18n com.installshield.isje.ISJE .\Projects\STAF2x\STAF2x.xml -build

staf local monitor log message "Copying the aix ISMP binaries to the STAF_ISMP_OutputFiles\disk1 directory"

cd C:\STAF_ISMP_InputFiles

copy C:\STAF_ISMP_OutputFiles\disk1\STAF264-setup-aix.bin C:\STAF_Installers\aix\*.*
copy C:\STAF_ISMP_OutputFiles\disk1\STAF264-setup.jar C:\STAF_Installers\aix\STAF264-setup-aix.jar

staf local monitor log message "Completed execution of build-aix.cmd"





