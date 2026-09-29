@echo off
echo ============================================================
echo Starting AI-Powered Fraud Detection System
echo ============================================================

REM 1. Start Ganache (Blockchain)
start "Ganache Local Blockchain" cmd /k "cd Backend && npx --yes ganache --port 7545 --chain.networkId 5777 --wallet.deterministic"

REM Wait 3 seconds for Ganache to start
timeout /t 3 /nobreak >nul

REM 2. Start Backend API
start "Backend Flask API" cmd /k "cd Backend && .\venv\Scripts\activate && python app.py"

REM Wait 3 seconds for Backend to start
timeout /t 3 /nobreak >nul

REM 3. Start Frontend Vite Server
start "Frontend React Vite" cmd /k "cd Frontend && npm run dev"

echo.
echo All services launched!
echo - Frontend:  http://localhost:5173
echo - Backend:   http://localhost:5000
echo - Blockchain: http://127.0.0.1:7545
echo.
pause
