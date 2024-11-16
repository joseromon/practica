
echo #!/bin/bash
mkdir -p build
cp -r index.html page1.html page2.html build/
echo 

echo "Descargando w3.css desde $W3CSS_URL..."
if ! curl -o $W3CSS_FILE $W3CSS_URL; then
    echo "Error: No se pudo descargar w3.css."
    exit 1
fi