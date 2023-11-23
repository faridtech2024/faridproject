README.md: guessinggame.sh
    echo "# Guessing Game Project" > README.md
    echo "" >> README.md
    echo "Date and Time of Make: $$(date)" >> README.md
    echo "Number of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

.PHONY: clean
clean:
    rm README.md
