#!/bin/bash
git update-ref -d HEAD
git remote remove origin
rm LICENSE README.md
find . -not -path "*/.*" -type f \( -name "*.kt" -o -name "*.kts" \) -exec sed -i.bak "s/com.patrykandpatrick.boilerplate/$1/" {} \; -exec rm {}.bak \;
find . -not -path "*/.*" -type f \( -name "*.kts" -o -name "*.xml" \) -exec sed -i.bak "s/Android Boilerplate/$2/" {} \; -exec rm {}.bak \;
cd app/src/main/kotlin || exit
mkdir -p "${1//.//}"
mv -v com/patrykandpatrick/boilerplate/* "$_" 1>/dev/null
rm -r com
cd - 1>/dev/null || exit
rm "$0"
