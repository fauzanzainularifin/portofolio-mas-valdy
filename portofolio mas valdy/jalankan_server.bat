@echo off
title Figma Prototyper - Server Lokal Devaldy
color 0b
echo ===============================================================
echo        SERVER LOKAL PORTFOLIO UNTUK IMPORT FIGMA
echo        Atas Nama: Devaldy Dzikri Syach M.
echo ===============================================================
echo.
echo Cara Pasang / Import ke Figma menggunakan html.to.design:
echo 1. Biarkan jendela server ini tetap terbuka (jangan ditutup).
echo 2. Buka aplikasi Figma Anda atau figma.com di browser.
echo 3. Buka menu Plugins di Figma, cari: html.to.design
echo 4. Masukkan URL tunggal berikut ke kolom input plugin:
echo.
echo    http://localhost:8000/canvas.html
echo.
echo 5. Pilih resolusi desktop / bebas, lalu klik "Import".
echo 6. Halaman beserta panah-panah prototype (vector SVG) 
echo    akan otomatis masuk dan tersusun rapi di Figma Anda!
echo ===============================================================
echo Menjalankan server lokal di port 8000...
echo.

:: Coba menggunakan Node.js npx http-server
where npx >nul 2>nul
if %errorlevel% equ 0 (
    npx -y http-server -p 8000 -c-1
    goto end
)

:: Jika npx tidak ada, coba menggunakan Python
where python >nul 2>nul
if %errorlevel% equ 0 (
    python -m http.server 8000
    goto end
)

echo ERROR: Komputer Anda tidak memiliki Node.js (npx) atau Python.
echo Silakan install Node.js (disarankan) atau jalankan server lokal
echo Anda sendiri di port 8000 pada folder ini.
:end
pause
