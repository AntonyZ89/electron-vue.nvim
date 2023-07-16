; inherits: css

((class_name) @class.name)

((tag_name) @tag.name)

(pseudo_element_selector "::" (tag_name) @tag.pseudo_element)
(pseudo_class_selector (class_name) @tag.pseudo_class)
((feature_name)  @tag.feature_name)
((attribute_name)  @tag.attribute_name)
(declaration (plain_value) @property_value (#set! "priority" 105))
((id_name)  @tag.id)

((unit) @unit)

((call_expression (arguments (plain_value) @call_expression.type (#set! "priority" 105))))
