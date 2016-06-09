#!/usr/bin/env python

"""Encode Arabic"""

__version__   = "1.3.9"
__license__   = "GPL"
__copyright__ = "2016"
__author__    = "Otakar Smrz"
__contact__   = "otakar-smrz users.sf.net"
__homepage__  = "http://encode-arabic.sf.net/"

import subprocess
import codecs

def arabic(code, mode, text="", *opts):
    arabic = subprocess.Popen([code, mode] + list(opts),
                              stdin=subprocess.PIPE,
                              stdout=subprocess.PIPE)
    (data, errs) = arabic.communicate(text)
    return data

def encode(mode, text, *opts):
    return arabic('encode', mode, text.encode('utf-8'), *opts)

def decode(mode, text, *opts):
    return arabic('decode', mode, text, *opts).decode('utf-8')

MODES = [
    'arabtex', 'lagally', 'tex',
    'zdmg', 'arabtex_zdmg', 'arabtex-zdmg',
    'buckwalter', 'tim',
    'habash', 'soudi', 'hsb',
    'parkinson', 'dil',
    'winarabic', 'cp1256', 'windows_1256', 'windows-1256',
    'isoarabic', 'iso_8859_6', 'iso-8859-6',
    'macarabic',
    'macfarsi',
    'dosarabic', 'cp864',
    'dosfarsi', 'cp1006',
    'asmo449',
    'isiri3342',
    ]

codecs.register(
    lambda mode:
    codecs.CodecInfo(name=mode,
                     encode=lambda text: (encode(mode, text), len(text)),
                     decode=lambda text: (decode(mode, text), len(text)),
                     incrementalencoder=codecs.IncrementalEncoder,
                     incrementaldecoder=codecs.IncrementalDecoder,
                     streamwriter=codecs.StreamWriter,
                     streamreader=codecs.StreamReader)
    if mode.lower() in MODES else None
    )
