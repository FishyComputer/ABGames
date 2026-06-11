#!/bin/bash
# ABGames Launcher Script for Nobara Linux

# Get the directory where the script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "🎮 ABGames Launcher"
echo "==================="
echo ""
echo "Select launch method:"
echo ""
echo "1) Firefox (Recommended)"
echo "2) Default browser (xdg-open)"
echo "3) Local web server (Python)"
echo "4) Chromium"
echo ""
read -p "Enter choice [1-4]: " choice

case $choice in
    1)
        echo "🔥 Opening in Firefox..."
        firefox "$DIR/index.html" &
        ;;
    2)
        echo "🌐 Opening in default browser..."
        xdg-open "$DIR/index.html" &
        ;;
    3)
        echo "🖥️  Starting local web server on port 8000..."
        echo "📡 Open your browser to: http://localhost:8000"
        echo "⏹️  Press Ctrl+C to stop the server"
        echo ""
        cd "$DIR"
        python3 -m http.server 8000
        ;;
    4)
        echo "🌐 Opening in Chromium..."
        chromium "$DIR/index.html" &
        ;;
    *)
        echo "❌ Invalid choice. Opening in default browser..."
        xdg-open "$DIR/index.html" &
        ;;
esac

echo ""
echo "✅ ABGames launched! Have fun! 🎉"
