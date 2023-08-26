; inherits: vue

; <i18n lang="json">
(element
  (start_tag
    (tag_name) @_i18n
    (attribute
      (attribute_name) @_lang
      (quoted_attribute_value (attribute_value) @_json)
    )
  )
  (#eq? @_i18n "i18n")
  (#eq? @_lang "lang")
  (#eq? @_json "json")
  (text) @json
)

; <i18n lang="yaml">
(element
  (start_tag
    (tag_name) @_i18n
    (attribute
      (attribute_name) @_lang
      (quoted_attribute_value (attribute_value) @_yaml)
    )
  )
  (#eq? @_i18n "i18n")
  (#eq? @_lang "lang")
  (#any-of? @_yaml "yaml" "yml")
  (text) @yaml
)

; <i18n lang="json5">
(element
  (start_tag 
    (tag_name) @_i18n
    (attribute
      (attribute_name) @_lang
      (quoted_attribute_value (attribute_value) @_json5)
    )
  )
  (#eq? @_i18n "i18n")
  (#eq? @_lang "lang")
  (#eq? @_json5 "json5")
  (text) @json5
)
