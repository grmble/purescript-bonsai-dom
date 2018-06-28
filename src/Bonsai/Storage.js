"use strict";

exports.primitives =
    { getItem: function (k, win) { return win.localStorage.getItem(k); }
    , setItem: function (k, v, win) { win.localStorage.setItem(k, v); }
    , removeItem: function (k, win) { win.localStorage.removeItem(k); }
    };
