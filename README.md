Comma Object
============

This Vim extention defines a text object (``,``) for manipulating comma-delimited lists.

An example:

    ["one", "two", "three"]
              ^

    da,

    ["one", "three"]
          ^

``a,`` will select the comma, in addition to the contents.

Another example:

    ["one", "two", "three"]
              ^

    ci,

    ["one, , "three"]
           ^

``i,`` will only select the contents.

There is support for ``()``, ``[]``, and ``{}`` enclosed lists.

There is also support for lists ending with ``do``, indicating a Ruby method without parentheses.

To do
=====
- Handle first arguments in method calls without parentheses.
- Handle last arguments in method calls without parentheses that do not have `` do`` on the end.
- Handle lists spanning lines.
