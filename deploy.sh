rm -R docs/
cp -R public/ docs/

sed 's/<title>Calculadora de Vida<\/title>/<base href="https:\/\/fedelway.github.io\/calculadora-de-vida\/">\n\t<title>Calculadora de Vida<\/title>/' docs/index.html > docs/index.html.tmp && mv docs/index.html.tmp docs/index.html