STOKE Style Guide
=================

This document is intended for developers who are interested in reading or modifying the STOKE source code. Unless otherwise specified below, preference is given to the Google C++ style guide (http://google-styleguide.googlecode.com/svn/trunk/cppguide.html).

Build
-----

- All warnings are errors. Use the strictest warning settings possible.

Repository
----------

- The ```develop``` branch is the internally-facing stable codebase. Don't commit anything to ```develop``` that doesn't pass ```make test```.
- The ```master``` branch is the externally-facing stable codebase. DEFINITELY don't commit anything to ```master`` that doesn't pass ```make test```.
- Issues are reported on the github issue tracker. Keep issues focused and provide detailed descriptions.
- Branches related to issues are forked off of ```develop``` and named using the ```issue-XXX``` convention.
- Completed issues are merged back into ```develop``` using the ```--no-ff``` command line switch.
- Releases are forked off of ```develop``` and named using the ```release-XXX``` convention.
- No new features are permitted in release branches, only bugfixes.
- Upon completion, releases are merged into ```master```.
- High-priority bug-fixes may be merged directly into ```master```.

File Organization
-----------------

- One class per file. Exceptions are permitted in the interest of avoiding file bloat.
- Prefer LINUX-style directory organization: general-purpose source code goes in the ```src``` directory, source code related to top-level tools goes in the ```tools``` directory. Build targets are placed in the ```bin``` directory.
- Avoid nested directories in the ```src``` and ```tools``` directories (until a time when the code base gets so big as to require it).
- Avoid circular dependencies between source directories.

Class Design
------------

- Avoid nested classes. Exceptions are permitted for common patterns such as iterators. Prefer friend classes with all private members when possible.
- Prefer compiler-generated constructors.
- Keep interfaces and functionality as small as possible. In many cases, callbacks have been a great solution to this problem. Consider a simple interface that uses callbacks.
- Avoid inheritence for the sake of dynamic dispatch. Exceptions are permitted when the alternatives seems equally cumbersome. Inheritence for the sake of implementation sharing (ie: inherriting from an STL container) is encouraged.
- Most classes require some form of configuration. These methods should be defined using the ```<class>& set_property(const T& value)``` convention to allow for ```<class>.set_x().set_y().set_z()``` usage. Default values for class properties should be set using these methods in class constructors. Classes with properties that require non-trivial value settings should require those values as constructor arguments.

Namespaces
----------

- All code that appears in a header file should be placed in the STOKE namespace.

Parameter Passing
-----------------

- Ignore Google's recommendations for argument ordering.
- Anything larger than a pointer should be passed by (const whenever possible) reference.

Documentation
-------------

- All methods that appear in header files should be documented with a short one-line description. Use doxygen-style comments (```/** ... */```).
- Use single-line comments to describe tricky implementation details.

Exceptions
----------

- For better or worse, this code base evolved to not use exceptions. Avoid the use of exceptions until such a time as they are globally refactored in.

C++ >= 11
---------

- Ignore Google's recommendations for avoiding features. This is PL/Compiler research. If we can't use fun tools here, where can we?

Formatting
----------

- Use a liberal but reasonable column width. It's the 21st century, more or less 100 is fine.
- Use inline definitions for functions defined in header files.
- Low-level formatting details are controlled using astyle. These are applied using a pre-commit hook.
