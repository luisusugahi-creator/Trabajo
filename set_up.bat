@echo off
echo ==========================================
echo   Preparando entorno del proyecto MLOps
echo ==========================================
echo.

:: Crear entorno virtual
python -m venv venv

:: Activar entorno
call venv\Scripts\activate

:: Instalar dependencias (si existen)
if exist requirements.txt (
    echo Instalando dependencias...
    pip install -r requirements.txt
) else (
    echo No se encontró archivo requirements.txt
)

echo.
echo Entorno listo. Ejecuta 'call venv\Scripts\activate' para activarlo.
pause
