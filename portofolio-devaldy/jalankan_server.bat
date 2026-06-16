@echo off
title Figma Prototyper - Server Lokal Devaldy
color 0b
echo ===============================================================
echo        SERVER LOKAL PORTFOLIO UNTUK IMPORT FIGMA
echo        Atas Nama: Devaldy Dzikri Syach M.
echo ===============================================================
echo.
echo Cara Pasang / Import ke Figma menggunakan html.to.design:
echo.
echo Opsi A: Menggunakan Versi Live (Rekomendasi - Lebih Praktis!)
echo 1. Buka Figma Anda (aplikasi desktop atau figma.com di browser).
echo 2. Buka menu Plugins, cari dan jalankan: html.to.design
echo 3. Masukkan URL berikut: https://portofolio-devaldy.vercel.app/canvas.html
echo 4. Klik "Import". Canvas prototype akan otomatis masuk dan tersusun rapi!
echo.
echo Opsi B: Menggunakan Server Lokal (Jika ingin impor hasil perubahan lokal)
echo 1. Biarkan jendela server ini tetap terbuka (jangan ditutup).
echo 2. Buka menu Plugins di Figma, jalankan: html.to.design
echo 3. Masukkan URL berikut: http://localhost:8000/canvas.html
echo 4. Klik "Import".
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
