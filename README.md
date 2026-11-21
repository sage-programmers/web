# Sage Programmers website
Static site (HTML/CSS/JS) with PWA install, contact form (Netlify Forms) and download slots for APK and EXE.

## Deploy
1. Create a GitHub repo, upload all files from this folder (unzipped), commit.
2. Netlify: Add new site > Import from Git > pick the repo. Build command empty, publish directory `.`.
3. Domain settings: add www.sageprogrammers.co.ke.
4. Forms: Netlify > Forms to read messages; add email notifications under Forms > Settings.

## APK and EXE
Put `Sage-Programmers.apk` and `Sage-Windows.zip` in `downloads/`.
No code is needed to get a first version: go to pwabuilder.com, enter your Netlify URL, and download the Android package and Windows package.
