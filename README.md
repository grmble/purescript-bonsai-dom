# Purescript Bonsai DOM

[![Build Status](https://travis-ci.org/grmble/purescript-bonsai-dom.svg?branch=master)](https://travis-ci.org/grmble/purescript-bonsai-dom)

Minimal DOM primitives used by `purescript-bonsai`.

Bonsai programs use Elm's virtual dom, so the
DOM is only needed for bootstrapping and
side effects (like setting the focus, ...).

This provides wrappers for the needed functionality
while taking care to be usable with JSDOM for testing.

`purescript-bonsai` is getting ready for 1.0.
Once released, this package will be documented at
https://pursuit.purescript.org/packages/purescript-bonsai-dom/

For more information see the Bonsai homepage at
https://grmble.github.io/purescript-bonsai/
