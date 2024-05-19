KEYMAP_DIR=qmk/keyboards/planck/keymaps/alex-bue

# Use qmk through poetry
QMK=./qmk.sh

.PHONY: build
build: link
	$(QMK) compile -j8 -kb planck/ez/glow -km alex-bue

.PHONY: flash
flash: link
	$(QMK) flash -j8 -kb planck/ez/glow -km alex-bue

.PHONY: link
link: unlink
	ln -sf "$(realpath keymap)" "${KEYMAP_DIR}"

.PHONY: unlink
unlink:
	rm -rf "${KEYMAP_DIR}"

.PHONY: clean
clean: unlink
	$(QMK) clean

