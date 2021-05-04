LATEX = pdflatex

OBJDIR = build

TARGET = $(OBJDIR)/invoice.pdf

all: $(TARGET)

$(OBJDIR)/%.pdf: %.tex | $(OBJDIR)
	$(LATEX) -output-directory $(OBJDIR) $<;

$(OBJDIR):
	mkdir -p $@

clean:
	rm -rf $(OBJDIR)
