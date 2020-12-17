setup:
	swift build
test: setup
	swift test
update:
	swift package update
	swift package generate-xcodeproj
install: setup
	cp .build/x86_64-apple-macosx/debug/swigit /usr/local/bin/swigit
uninstall:
	rm -rf /usr/local/bin/swigit
open-project: setup
	swift package generate-xcodeproj
	open swigit.xcodeproj
