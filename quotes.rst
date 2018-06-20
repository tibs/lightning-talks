:title: Lightning talk

----

Lightning Talk
==============

By Tibs / Tony Ibbs, for CamPUG Dec 2017

Written using reStructuredText_.  Presented using hovercraft_.

.. _reStructuredText: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
.. _hovercraft: https://github.com/regebro/hovercraft

----

**Quotation marks**

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

.. note:: But if you do that, be aware that some people will probably look at
   you a bit oddly.

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

.. note:: But basically, don't worry too much about it.

----

**String and repr**

----

Don't do:

.. code:: python

    logger.error('Key %s has value \'%s\'', key, value)

or even:

.. code:: python

    logger.error("Key %s has value '%s'", key, value)

Do:

.. code:: python

    logger.error("Key %s has value %r", key, value)

----

Why? Because it's useful to distinguish::

    Key Fred has value 1

from::

    Key Fred has value '1'

----

Similarly, don't do:

.. code:: python

    print("Key {} has value '{}'".format(key, value))

but do:

.. code:: python

    print("Key {} has value {!r}".format(key, value))

.. note:: Remember there's a whole little language that can be used after
   that ``!`` character.

----

And actually, strongly consider:

.. code:: python

    print(f'Key {key} has value {value!r}')

.. note:: ``f`` strings turn out to be really nice - they remove a lot of
   repetition, and even allow simple expressions inside the curly braces.
   But their killer use is just as above, for very simple strings.

----

And, by the way, don't forget:

.. code:: python

    logger.exception('The mouse appears to be spinning')

.. note:: Which takes care of logging all the exception details for you,
   as an error.

----

Fin
===

By Tibs / Tony Ibbs, for CamPUG Dec 2017

Written using reStructuredText_.  Presented using hovercraft_.

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
