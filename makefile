readme:
	@echo "#guessinggame" > README.md
	@date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S" >> README.md
	@echo "Total lines in guessinggame.sh =>" >> README.md
	@cat guessinggame.sh | wc -l >> README.md
