Comma Object
============

This Vim extention defines a text object (,) for manipulating comma-delimited lists.

An example:

    ["one", "t|wo", "three"]

    da,

    ["one", "three"]

"a," will select the comma, in addition to the contents.

Another example:

    ["one", "t|wo", "three"]

    ci,

    ["one, |, "three"]

There is support for (), [], and {} enclosed lists.
