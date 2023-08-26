; inherits: vue

(interpolation [ "{{" "}}" ] @interpolation)
 ((directive_name) @directive (#lua-match? @directive "v"))

; Component
(element 
  (start_tag
    (tag_name) @component_tag (#match? @component_tag "^[A-Z]")
  ) 
)

(end_tag
  (tag_name) @component_tag (#match? @component_tag "^[A-Z]")
)

(element
  (self_closing_tag
    (tag_name) @component_tag (#match? @component_tag "^[A-Z]")
  )
)
