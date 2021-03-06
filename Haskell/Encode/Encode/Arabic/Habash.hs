-- |
--
-- Module      :  Encode.Arabic.Habash
-- Copyright   :  Otakar Smrz 2005-2012
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- Habash-Soudi-Buckwalter notation is a one-to-one transliteration of the
-- graphemes of the Arabic script into various symbols of Unicode defined in
-- <http://scholar.google.com/scholar?q=habash+soudi+buckwalter>.
--
-- /Encode::Arabic::Habash/ in Perl:
-- <http://search.cpan.org/dist/Encode-Arabic/lib/Encode/Arabic/Habash.pm>


module Encode.Arabic.Habash (

        -- * Types

        Habash (..)

    ) where


import Encode

import Data.Map (Map)
import qualified Data.Map as Map


data Habash = Habash | Soudi | HSB

    deriving (Enum, Show)


instance Encoding Habash where

    encode _ = recode encoder

    decode _ = recode decoder


recode :: (Ord a, Enum b, Enum a) => Map a b -> [a] -> [b]

recode xry xs = [ Map.findWithDefault ((toEnum . fromEnum) x) x xry | x <- xs ]


recoder :: Ord a => [a] -> [b] -> Map a b

recoder xs ys = Map.fromList (zip xs ys)


encoder :: Map UPoint Char

encoder = recoder decoded encoded


decoder :: Map Char UPoint

decoder = recoder encoded decoded


decoded :: [UPoint]

decoded = map toEnum

       [0x0621, 0x0622, 0x0623, 0x0624, 0x0625, 0x0626, 0x0627, 0x0628,
        0x0629, 0x062A, 0x062B, 0x062C, 0x062D, 0x062E, 0x062F, 0x0630,
        0x0631, 0x0632, 0x0633, 0x0634, 0x0635, 0x0636, 0x0637, 0x0638,
        0x0639, 0x063A, 0x0641, 0x0642, 0x0643, 0x0644, 0x0645, 0x0646,
        0x0647, 0x0648, 0x0649, 0x064A, 0x064E, 0x064F, 0x0650, 0x064B,
        0x064C, 0x064D, 0x0651, 0x0652, 0x0670, 0x0671, 0x067E, 0x0686,
        0x06A4, 0x06AF, 0x0640,
        0x0698,
        0x0660, 0x0661, 0x0662, 0x0663, 0x0664, 0x0665, 0x0666, 0x0667,
        0x0668, 0x0669,
        0x060C, 0x061B, 0x061F]


encoded :: [Char]

encoded = map toEnum

       [0x0027, 0x0100, 0x00C2, 0x0175, 0x01CD, 0x0177, 0x0041, 0x0062,
        0x0127, 0x0074, 0x03B8, 0x006A, 0x0048, 0x0078, 0x0064, 0x00F0,
        0x0072, 0x007A, 0x0073, 0x0161, 0x0053, 0x0044, 0x0054, 0x010E,
        0x03C2, 0x03B3, 0x0066, 0x0071, 0x006B, 0x006C, 0x006D, 0x006E,
        0x0068, 0x0077, 0x00FD, 0x0079, 0x0061, 0x0075, 0x0069, 0x00E3,
        0x0169, 0x0129, 0x007E, 0x00B7, 0x00E1, 0x00C4, 0x0070, 0x0063,
        0x0076, 0x0067, 0x005F,
        0x017E,
        0x0030, 0x0031, 0x0032, 0x0033, 0x0034, 0x0035, 0x0036, 0x0037,
        0x0038, 0x0039,
        0x002C, 0x003B, 0x003F]
