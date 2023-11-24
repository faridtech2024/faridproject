README.md: guessinggame.sh
    echo "# Guessing Game Project" > README.md
    echo "## Date and Time: $$(date)" >> README.md
    echo "## Lines of Code in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

github-pages: README.md
    git add README.md
    git commit -m "Update README.md"
    git push origin master
