pkg-name = com.example.appname
launch = EntryActivity
src = src
build = build
gradle-ver = 4.10.2
icon = charge

src-files = $(patsubst $(src)/%, $(build)/src/%, $(shell find $(src) -type f))
icon-file = $(build)/src/main/res/drawable/$(icon).xml
build-deps = env $(build)/gradlew $(build)/build.gradle $(src-files) $(icon-file)

default: build

build: $(build-deps) always
	$(build)/gradlew -p $(build) build

debug: $(build-deps) always
	$(build)/gradlew -p $(build) installDebug

release: $(build-deps) always
	$(build)/gradlew -p $(build) assembleRelease

run: debug
	adb shell am start -n $(pkg-name)/.$(launch)

env: android-home java-home

android-home:
	test -n "$$ANDROID_HOME" || (echo required environment variable \$$ANDROID_HOME is not set && false)

java-home:
	test -n "$$JAVA_HOME" || (echo required environment variable \$$JAVA_HOME is not set && false)

clean:
	rm -fr build/* build/.gradle*

always:

$(build)/gradlew:
	gradle -p $(build) wrapper --gradle-version $(gradle-ver)

$(build)/build.gradle: build.gradle
	cp $< $@

$(build)/src/%: $(src)/%
	@mkdir -p $(@D)
	cp $< $@

$(icon-file): $(src)/image/$(icon).svg
	xsltproc tool/svg-drawable.xslt $< > $@

.PHONY: default build debug release run env android-home java-home clean always
