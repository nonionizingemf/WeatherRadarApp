@ECHO OFF
SETLOCAL
SET DIR=%~dp0
IF DEFINED JAVA_HOME SET JAVA_EXE=%JAVA_HOME%\bin\java.exe
IF NOT DEFINED JAVA_EXE SET JAVA_EXE=java.exe
"%JAVA_EXE%" -version >NUL 2>&1
IF ERRORLEVEL 1 (
  ECHO ERROR: Java 17 or newer is required. Set JAVA_HOME to a JDK installation.
  EXIT /B 1
)
"%JAVA_EXE%" -classpath "%DIR%gradle\wrapper\gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain %*
ENDLOCAL
