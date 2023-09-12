; inherits: vue

; <i18n lang="json">
(element
  (start_tag
    (tag_name) @_i18n
    (attribute
      (attribute_name) @_lang
      (quoted_attribute_value (attribute_value) @injection.language)
    )
  )
  (text) @injection.content
  (#eq? @_i18n "i18n")
  (#eq? @_lang "lang")
  (#eq? @injection.language "json")
  (#set! injection.language "json")
  (#set! injection.include-children)
)

; <i18n lang="yaml">
(element
  (start_tag
    (tag_name) @_i18n
    (attribute
      (attribute_name) @_lang
      (quoted_attribute_value (attribute_value) @injection.language)
    )
  )
  (text) @injection.content
  (#eq? @_i18n "i18n")
  (#eq? @_lang "lang")
  (#any-of? @injection.language "yaml" "yml")
  (#set! injection.include-children)
)

; <i18n lang="json5">
(element
  (start_tag 
    (tag_name) @_i18n
    (attribute
      (attribute_name) @_lang
      (quoted_attribute_value (attribute_value) @injection.language)
    )
  )
  (text) @injection.content
  (#eq? @_i18n "i18n")
  (#eq? @_lang "lang")
  (#eq? @injection.language "json5")
  (#set! injection.include-children)
)
