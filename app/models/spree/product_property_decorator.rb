module Spree
  ProductProperty.class_eval do
    def property_type
      property.property_type.attributes.except("created_at", "updated_at")
    end

    def property_type_id
      property.property_type.id
    end
  end
end