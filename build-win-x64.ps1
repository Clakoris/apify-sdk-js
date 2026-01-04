Write-Host "S" -ForegroundColor Cyan
Write-Host "=== Building Apify Project ===" -ForegroundColor Cyan
try {
    Write-Host "Running Turborepo build..." -ForegroundColor Yellow
    npm run build
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "? Build completed successfully!" -ForegroundColor Green
    } else {
        Write-Error "Build failed with exit code: $LASTEXITCODE"
    }
} catch {
    Write-Host "Build process failed: $($_.Exception.Message)" -ForegroundColor Red
}
