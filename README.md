Basic Android project with kotlin support using Makefile.

Based on: https://github.com/czak/minimal-android-project

Working With Makefile
---------------------

```sh
# build source code
make
make build

# make and install debug build
make debug

# make and install release build
make release

# make, install, and run debug build
make run

# clean all build artifacts
make clean
```

Working With SVG Images
-----------------------
To use SVG images in the project, place them in `src/main/res/image`.  At build
time, the images will be turned into Android vector images.

### Using Color Resources
If you need to use an Android color resource in an SVG image, you can add the
additional attribute `android:fillColor` and specify a color resource with
`@color/<resource>` as typical for Android resource files.  The `android`
namespace must be defined in the SVG document.
