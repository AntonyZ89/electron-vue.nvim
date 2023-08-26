; inherits: jsx

; Component
; (element 
;   (start_tag
;     (tag_name) @component_tag (#match? @component_tag "^[A-Z]")
;   ) 
; )
;
; (end_tag
;   (tag_name) @component_tag (#match? @component_tag "^[A-Z]")
; )
;
; (element
;   (self_closing_tag
;     (tag_name) @component_tag (#match? @component_tag "^[A-Z]")
;   )
; )


(jsx_element
  (jsx_opening_element
    (identifier) @component_tag (#match? @component_tag "^[A-Z]")
  )
)

(jsx_self_closing_element
  (member_expression
    (identifier) @component_tag (#match? @component_tag "^[A-Z]")
  )
)

(jsx_self_closing_element
  (member_expression
    (property_identifier) @component_tag.property (#match? @component_tag.property "^[A-Z]")
  )
)

(jsx_closing_element
 (identifier) @component_tag (#match? @component_tag "^[A-Z]")
)
