Comma Object
============

This Vim extention defines a text object (``,``) for manipulating comma-delimited lists.

An example:

    ["one", "t|wo", "three"]

    da,

    ["one", "three"]

``a,`` will select the comma, in addition to the contents.

Another example:

    ["one", "t|wo", "three"]

    ci,

    ["one, |, "three"]

``i,`` will only select the contents.

There is support for ``()``, ``[]``, and ``{}`` enclosed lists.

There is support for lists ending in `` do``, indicating a Ruby method without parentheses.

To Do
=====
- Handle first arguments in method calls without parentheses.
- Handle last arguments in method calls without parentheses that do not have `` do`` on the end.
- Handle lists spanning lines.
- Handle strings containing commas, or other significant characters.
- Handle nested method calls: ``["one", obj.meth|od("two", "three")]``
