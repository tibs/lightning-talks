String and repr: A lightning talk
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

(``f`` strings turn out to be really nice - they remove a lot of repetition,
and even allow simple expressions inside the curly braces.  But their killer
use is just as above, for very simple strings.)

----

And, by the way, don't forget:

.. code:: python

    logger.exception('The mouse appears to be spinning')

which takes care of logging all the exception details for you, as an error.

----

Fin
---

By Tibs / Tony Ibbs, for CamPUG Dec 2017

Sources at https://github.com/tibs/lightning-talks

Written using reStructuredText_.  Originally presented using hovercraft_.
Converted to PDF slides using pandoc_ and beamer_.

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
