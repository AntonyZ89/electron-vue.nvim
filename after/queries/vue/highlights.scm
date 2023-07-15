; inherits: vue

(interpolation [ "{{" "}}" ] @interpolation)
 ((directive_name) @directive (#lua-match? @directive "v"))
