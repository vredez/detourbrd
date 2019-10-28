DEST := /usr/local/bin

SCRIPT := detourbrd
TARGET := $(DEST)/$(SCRIPT)

.PHONY: usage
usage:
	@echo "Usage: make { install | uninstall }"

.PHONY: install
install: $(TARGET)

.PHONY: uninstall
uninstall:
	rm -rf $(TARGET)

$(TARGET): $(DEST)
	cp "$(SCRIPT)" "$(TARGET)"	
	chmod +x "$(TARGET)"
