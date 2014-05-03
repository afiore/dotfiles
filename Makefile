# Automatically symlink dotfiles into the user's home directory

SRC_DIR    := $(HOME)
TARGET_DIR := targets
FILES      := $(shell find $(TARGET_DIR) -maxdepth 10 -type f | xargs -I '{}' echo {} | sed "s@$(TARGET_DIR)@$(SRC_DIR)@g")

$(SRC_DIR)/%:
	mkdir -p $(dir $@)
	ln -sf $(PWD)/$(TARGET_DIR)/$* $@

unlink-$(SRC_DIR)/%:
	rm $(SRC_DIR)/%s

all: $(FILES)
	echo $(FILES)

clean: $(FILES)
	rm $(FILES)
