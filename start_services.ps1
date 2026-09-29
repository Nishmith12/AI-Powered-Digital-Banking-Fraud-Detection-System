Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " Starting AI-Powered Fraud Detection System" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan

# 1. Start Ganache (Blockchain)
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd 'c:\Ai powered fraud detection system\Backend'; npx --yes ganache --port 7545 --chain.networkId 5777 --wallet.deterministic"
Start-Sleep -Seconds 3

# 2. Start Backend API
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd 'c:\Ai powered fraud detection system\Backend'; .\venv\Scripts\Activate.ps1; python app.py"
Start-Sleep -Seconds 3

# 3. Start Frontend
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd 'c:\Ai powered fraud detection system\Frontend'; npm run dev"

Write-Host "`nAll services have been started in separate windows!" -ForegroundColor Green
Write-Host "- Frontend:   http://localhost:5173" -ForegroundColor Yellow
Write-Host "- Backend:    http://localhost:5000" -ForegroundColor Yellow
Write-Host "- Blockchain: http://127.0.0.1:7545" -ForegroundColor Yellow
