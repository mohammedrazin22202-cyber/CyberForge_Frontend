# CyberForge Frontend

This directory contains the statically hosted frontend files for the CyberForge personal portfolio and chatbot.

## File Structure
- `index.html`: Main portfolio site.
- `chatbot.html`: Intelligent chatbot query terminal interface.
- `voice.html`: Voice-assisted chatbot terminal interface.
- `start.bat`: Starts local frontend server on port `1616`.
- PDFs, images, and other assets.

## Local Development Setup

To run the frontend locally:
1. Open a terminal in this directory and run:
   ```bash
   python -m http.server 1616
   ```
   *(Or double-click `start.bat` on Windows)*.
2. Open [http://localhost:1616](http://localhost:1616) in your browser.

### Backend Integration
* **Local Auto-detection**: When accessed via `localhost`, `127.0.0.1`, or opened locally as a file (`file://` protocol), the frontend automatically attempts to connect to the local backend server running on port `6161`.
* **Production Configuration**: When deploying the frontend to a static host (e.g. Vercel, Netlify, GitHub Pages), ensure you configure the production API URL at the top of the `<script>` tags in `chatbot.html` and `voice.html`:
  ```javascript
  const PROD_BACKEND_URL = 'https://your-backend-api.onrender.com';
  ```
