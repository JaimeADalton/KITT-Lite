#! /bin/bash
read -p "*RUN AS ROOT*" root
echo "[*]Writing File Permissions..."
chmod -R 777 *
echo "[*]Done!"
echo "[*]Running lib installer..."
./lib_install.sh
echo "[+]Done!"
echo "[*]Moving KITT-Lite directory to /opt..."
mkdir /opt
cd ..
mv KITT-Lite /opt
echo "[+]Done!"
echo "[*]Writing KITT_lite.py to alias..."
echo "alias KITTlite='python3 /opt/KITT-Lite/KITT_lite.py'" >> /root/.bashrc
echo "[+]Done!"
echo 'Execute "KITTlite" to run KITT Lite Framework'

