; inherits: php

(variable_name "$" @dollar_sign)
(
 member_access_expression
 ((variable_name) @variable_name)
 (#not-eq? @variable_name "$this")
 (name) @type.property
)

(
 member_access_expression
 (member_access_expression)
 (name) @type.property
)

(encapsed_string ["{" "}"] @string.interpolation)
