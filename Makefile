LATEX = pdflatex

SRCDIR = src
OBJDIR = build

MAIN = $(SRCDIR)/faktura.tex

TARGET = $(OBJDIR)/faktura.pdf

all: $(TARGET)

$(TARGET): $(MAIN) | $(OBJDIR)
	$(LATEX) -output-directory $(OBJDIR) $<

$(OBJDIR):
	mkdir -p $@

clean:
	rm -rf $(OBJDIR)
