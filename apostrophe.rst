Apostrophe: a lightning talk
----------------------------

(Don't do this at home)

A lightning talk by Tibs / Tony Ibbs

Sources at https://github.com/tibs/lightning-talks

Written using reStructuredText_.
Converted to PDF slides using pandoc_ and beamer_.

.. _reStructuredText: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
.. _pandoc: https://pandoc.org
.. _beamer: https://github.com/josephwright/beamer

----

So we had this test code
------------------------

.. code::

    my_device = get_device(0)
    somebody_elses_device = get_device(1)
    assert somebody_elses_device != my_device

----

And it's clear what is wrong
----------------------------

It should be:

.. code::

    my_device = get_device(0)
    somebody_else's_device = get_device(1)
    assert somebody_else's_device != my_device

----

But...
------

.. code::

  ================ 1 passed in 0.01 seconds =================
  $ pytest temp.py
  ================== test session starts ====================
  ...

  ========================= ERRORS ==========================
  ________________ ERROR collecting temp.py _________________
  ...
  E     File "/Users/tibs/Dropbox/talks/lightning-talks/temp.py", line 7
  E       somebody_else's_device = get_device(1)
  E                                            ^
  E   SyntaxError: EOL while scanning string literal
  !!!!!!!! Interrupted: 1 errors during collection !!!!!!!!!!
  ================ 1 error in 0.18 seconds ==================

----

The problem is
--------------

Basically, Python identifiers need to be letters, numbers and underscores.

But ``'`` is not a letter.

----

But wait
--------

What if there was a *letter* that was a single quote character?

----

And lo, there is
----------------

https://codepoints.net/U+02BC

::

  U+02BC MODIFIER LETTER APOSTROPHE

----

According to wikipedia
----------------------

The *modifier letter apostrophe* (``'``) is a glyph.

In the International Phonetic Alphabet, it is used to express ejective
consonants, such as ``/k'/``, ``/t'/``, etc/

It denotes a glottal stop (IPA ``/?/``) in orthographies of many languages, such as Nenets.

It is encoded at ``U+02BC`` ``'`` modifier letter apostrophe (HTML ``&#700;``).

----

So we *can* have
----------------

.. code::

    my_device = get_device(0)
    somebody_else's_device = get_device(1)
    assert somebody_else's_device != my_device

----

Which works...
--------------

.. code::

  $ pytest temp.py
  ================== test session starts ====================
  ...
  collected 1 item

  temp.py .

  ================ 1 passed in 0.01 seconds =================

The last word
-------------

I shall leave the last word to a colleague's code review.

My colleague's review
----------------------

    **No**

----

Fin
---

A lightning talk by Tibs / Tony Ibbs

Written using reStructuredText_.
Converted to PDF slides using pandoc_ and beamer_.

.. _reStructuredText: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
.. _pandoc: https://pandoc.org
.. _beamer: https://github.com/josephwright/beamer



.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
