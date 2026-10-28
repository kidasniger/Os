.PHONY: build clean iso

build:
	chmod +x auto/* config/hooks/live/*
	sudo lb clean --purge || true
	sudo lb config
	sudo lb build
	sudo mv -f live-image-amd64.hybrid.iso kidas-os-0.1.0-amd64.iso

clean:
	sudo lb clean --purge
	rm -f build.log *.iso
