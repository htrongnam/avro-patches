Avro::Schema.class_eval do
  # Determine if a ruby datum is an instance of a schema
  def self.validate(expected_schema, datum, recursive = true)
    Avro::SchemaValidator.validate!(expected_schema, datum, recursive)
    true
  rescue Avro::SchemaValidator::ValidationError
    false
  end
end
