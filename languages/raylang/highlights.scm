; Highlights de raylang para Zed (captures del tema de sintaxis de Zed).

(identifier) @variable

((identifier) @type
  (#match? @type "^[A-Z]"))

((identifier) @constant
  (#match? @constant "^[A-Z][A-Z0-9_]+$"))

(type_identifier) @type
(primitive_type) @type

(function_item name: (identifier) @function)
(method_signature name: (identifier) @function)
(extern_signature name: (identifier) @function)
(parameter name: (identifier) @variable)
(self_parameter) @variable.special
(type_parameter name: (identifier) @type)
(const_item name: (identifier) @constant)
(field_declaration name: (identifier) @property)
(enum_variant name: (identifier) @constructor)
(annotation
  "@" @attribute
  name: (identifier) @attribute)

(call_expression
  function: (identifier) @function)
(call_expression
  function: (field_expression
    field: (identifier) @function.method))
(field_expression field: (identifier) @property)
(field_expression field: (tuple_index) @number)
(field_initializer name: (identifier) @property)
(struct_literal name: (identifier) @type)

(wildcard_pattern) @variable.special
(field_pattern name: (identifier) @property)
(pattern_path (identifier) @type)

(integer_literal) @number
(float_literal) @number
(boolean_literal) @boolean
(char_literal) @string
(string_literal) @string
(template_string_literal) @string
(bytes_literal) @string.special
(escape_sequence) @string.escape

(interpolation
  "${" @punctuation.special
  "}" @punctuation.special)

[
  "let"
  "var"
  "const"
  "fn"
  "return"
  "if"
  "else"
  "match"
  "while"
  "for"
  "in"
  "struct"
  "enum"
  "trait"
  "impl"
  "dyn"
  "import"
  "from"
  "extern"
  "as"
] @keyword

(visibility_modifier) @keyword
(blocking_modifier) @keyword
(let_condition "let" @keyword)
(match_guard "if" @keyword)

[
  "+" "-" "*" "/" "%"
  "==" "!=" "<" "<=" ">" ">="
  "&&" "||" "!"
  "&" "|" "^" "~" "<<" ">>"
  "=" "->" "=>" "?" "|>" ".."
] @operator

["(" ")" "[" "]" "{" "}"] @punctuation.bracket
["," ";" ":" "."] @punctuation.delimiter

(comment) @comment
