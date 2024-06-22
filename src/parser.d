module parser;

import pegged.grammar;

mixin(grammar('
    NC:
        Comment <: (!eol .)*
'));
