
.. code:: python

    import Encode.Arabic

.. code:: python

    text= "'ahlaN wa-sahlaN"

.. code:: python

    text.decode("tex")




.. parsed-literal::

    u'\u0623\u064e\u0647\u0644\u064b\u0627 \u0648\u064e\u0633\u064e\u0647\u0644\u064b\u0627'



.. code:: python

    print text.decode("tex")


.. parsed-literal::

    أَهلًا وَسَهلًا


.. code:: python

    text.decode("tex").encode("buckwalter")




.. parsed-literal::

    'OahlFA wasahlFA'



.. code:: python

    text.decode("tex").encode("habash")




.. parsed-literal::

    '\xc3\x82ahl\xc3\xa3A wasahl\xc3\xa3A'



.. code:: python

    text.decode("tex").encode("habash").decode("utf-8")




.. parsed-literal::

    u'\xc2ahl\xe3A wasahl\xe3A'



.. code:: python

    print text.decode("tex").encode("habash")


.. parsed-literal::

    ÂahlãA wasahlãA


.. code:: python

    import Encode.Arabic as arabic

.. code:: python

    arabic.encode("buckwalter", arabic.decode("tex", text))




.. parsed-literal::

    'OahlFA wasahlFA'



.. code:: python

    print arabic.arabic("encode", "--version")


.. parsed-literal::

    Encode Arabic (C) 2013-2005 Otakar Smrz
    GNU General Public License http://www.gnu.org/licenses/
    
    Encode Arabic 1.3.7 August 2014
    


.. code:: python

    print arabic.arabic("decode", "--version")


.. parsed-literal::

    Encode Arabic (C) 2013-2005 Otakar Smrz
    GNU General Public License http://www.gnu.org/licenses/
    
    Encode Arabic 1.3.7 August 2014
    

