#!/bin/bash

# Website Offline Backup Script
# Downloads a complete website for offline viewing

URL="https://www.suparat.net/pssretail/"
OUTPUT_DIR="./website-offline"

echo "========================================"
echo "Website Offline Downloader"
echo "========================================"
echo "URL: $URL"
echo "Output: $OUTPUT_DIR"
echo "========================================"

# Create output directory
mkdir -p "$OUTPUT_DIR"

# Download website using wget
wget \
    --mirror \
    --convert-links \
    --adjust-extension \
    --page-requisites \
    --no-parent \
    --execute robots=off \
    --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36" \
    --timeout=30 \
    --wait=1 \
    --random-wait \
    -P "$OUTPUT_DIR" \
    "$URL"

echo ""
echo "========================================"
echo "Download Complete!"
echo "========================================"
echo "Offline files saved to: $OUTPUT_DIR"
echo ""
echo "To view offline:"
echo "  1. Open $OUTPUT_DIR/www.suparat.net/pssretail/index.html"
echo "  2. Or use: firefox $OUTPUT_DIR/www.suparat.net/pssretail/index.html"
echo "========================================"
