@echo off
title CyberForge Frontend Server
echo ===================================================
echo   CYBERFORGE FRONTEND LOCAL SERVER
echo   Serving on: http://localhost:1616
echo ===================================================
python -m http.server 1616
