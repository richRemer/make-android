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

Working With Kotlin Sources
---------------------------
Source code should be found in the `src` directory and must follow the typical
gradle conventions.  Kotlin files should be placed in `main/kotlin` inside the
`src` directory, and inside the `kotlin` directory, source code should be
organized by the package name.

Example: Kotlin class FooBar defined in the com.example.foo package should be
placed in `src/main/kotlin/com/example/foo/FooBar.kt`.

Working With Java Sources
-------------------------
Source code should be found in the `src` directory and must follow the typical
gradle conventions.  Java files should be placed in `main/java` inside the `src`
directory, and inside the `java` directory, source code should be organized by
the package name.

Example: Java class FooBar defined in the com.example.foo package should be
placed in `src/main/java/com/example/foo/FooBar.java`.

Working With SVG Images
-----------------------
To use SVG images in the project, place them in `src/main/res/image`.  At build
time, the images will be turned into Android vector images.  Some features may
not be available, numerous assumptions are made, and typical restrictions on
using shadows *et al.* apply.

### Using Color Resources
If you need to use an Android color resource in an SVG image, you can add the
additional attribute `android:fillColor` and specify a color resource with
`@color/<resource>` as typical for Android resource files.  The `android`
namespace must be defined in the SVG document.
