; inherits: phpdoc

(
  tag
  (named_type) @named_type
)

(
  tag
  (
    array_type
    (named_type) @named_type
  )
)

(
  tag
  (
    array_type ["[]"] @named_type.brackets
  )
)
