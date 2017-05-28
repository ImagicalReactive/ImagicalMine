#!/bin/bash
echo -e "version\nms\nstop\n" | php src/pocketmine/PocketMine.php --no-wizard | grep -v "\[IM] Adding "
if ls plugins/Tesseract/ImagicalMine*.phar >/dev/null 2>&1; then
    echo Server packaged successfully.
else
    echo No phar created!
    exit 1
fi
