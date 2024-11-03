
all: index.html from-universal-languages-to-medical-terminologies.html

clean:
	rm -f index.html from-universal-languages-to-medical-terminologies.html

index.html: index.md template.html Makefile
	pandoc --toc -s --css reset.css --css index.css -i $< -o $@ --template=template.html

from-universal-languages-to-medical-terminologies.html: from-universal-languages-to-medical-terminologies.md post-template.html Makefile
	pandoc --toc -s --css reset.css --css index.css -i $< -o $@ --template=post-template.html

.PHONY: all clean
