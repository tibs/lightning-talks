Quotation marks: A lightning talk
---------------------------------

By Tibs / Tony Ibbs, for CamPUG Dec 2017

Sources at https://github.com/tibs/lightning-talks

Written using reStructuredText_.  Originally presented using hovercraft_.
Converted to PDF slides using pandoc_ and beamer_.

.. _reStructuredText: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
.. _pandoc: https://pandoc.org
.. _beamer: https://github.com/josephwright/beamer
.. _hovercraft: https://github.com/regebro/hovercraft

----

Don't do:

.. code:: python

    print('This isn\'t the answer')

when you can do:

.. code:: python

    print("This isn't the answer")

----

Don't do:

.. code:: python

    print("He said, \"Hello\"")

when you can do:

.. code:: python

    print('He said "Hello"')

----

Maybe even don't do:

.. code:: python

    print("He said, \"This isn't the answer\"")

when you can do:

.. code:: python

    print("""He said, "This isn't the answer"""")

.. """ - to make the parser in Vim happier after those 4 double quotes

(But if you do that, be aware that some people will probably look at you a bit
oddly.)

----

Python doesn't distinguish between the quotation marks used:

.. code:: python

    '...'
    "..."

or even (except for the ignoring line breaks thing):

.. code:: python

    """..."""
    '''..."""
    
----

Which should you use if there's no reason to choose?

* Does your project have a convention?
* ``'`` doesn't need a shift key on QWERTY english keyboards
* Personally, I think
  
  * ``"some messsage about 'word'"`` looks better with ``'word'``
  * Using ``"""`` for single line strings looks odd.
  * I don't much like ``'''``.

(But basically, don't worry too much about it.)

----

Fin
---

By Tibs / Tony Ibbs, for CamPUG Dec 2017

Sources at https://github.com/tibs/lightning-talks

Written using reStructuredText_.  Originally presented using hovercraft_.
Converted to PDF slides using pandoc_ and beamer_.

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
