(function_item
  "fn" @context
  name: (identifier) @name) @item

(struct_item
  "struct" @context
  name: (type_identifier) @name) @item

(enum_item
  "enum" @context
  name: (type_identifier) @name) @item

(enum_variant
  name: (identifier) @name) @item

(trait_item
  "trait" @context
  name: (type_identifier) @name) @item

(impl_item
  "impl" @context
  trait: (type_identifier) @name) @item

(method_signature
  "fn" @context
  name: (identifier) @name) @item

(const_item
  "const" @context
  name: (identifier) @name) @item

(extern_signature
  "fn" @context
  name: (identifier) @name) @item
