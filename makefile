README.md: guessinggame.sh
    echo "# Guessing Game Project" > README.md
    echo "## Date and Time: $$(date)" >> README.md
    echo "## Lines of Code in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

index.html: guessinggame.sh
    echo "<!DOCTYPE html>" > index.html
    echo "<html lang='en'>" >> index.html
    echo "<head>" >> index.html
    echo "  <meta charset='UTF-8'>" >> index.html
    echo "  <meta name='viewport' content='width=device-width, initial-scale=1.0'>" >> index.html
    echo "  <title>Guessing Game</title>" >> index.html
    echo "</head>" >> index.html
    echo "<body>" >> index.html
    cat guessinggame.sh >> index.html
    echo "</body>" >> index.html
    echo "</html>" >> index.html

github-pages: README.md index.html
    git add README.md index.html
    git commit -m "Update README.md and index.html"
    git push origin master
