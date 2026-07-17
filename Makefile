BOOKS := 01-клоун 02-безликий 03-путешественник 04-неумирающий 05-красный-жрец 06-искатель-света 07-повешенный 08-шут

OUT := build/epub

.PHONY: all clean $(BOOKS)

all: $(BOOKS)

$(BOOKS):
	pandoc --metadata-file=book/$@/metadata.yaml book/$@/*.md -o $(OUT)/$@.epub

clean:
	rm -f $(OUT)/*.epub
