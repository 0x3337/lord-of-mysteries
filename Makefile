BOOKS := 01-клоун 02-безликий

OUT := build/epub

.PHONY: all clean $(BOOKS)

all: $(BOOKS)

$(BOOKS):
	pandoc --metadata-file=book/$@/metadata.yaml book/$@/*.md -o $(OUT)/$@.epub

clean:
	rm -f $(OUT)/*.epub
