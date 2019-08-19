.PHONY: slides

slides:
	marp --allow-local-files --pdf -o slides.pdf slides.md
