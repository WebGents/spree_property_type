module Spree
  Property.class_eval do
    belongs_to :property_type
    
    def property_type_name
      property_type.name rescue 'Properties'
    end
    
    def property_type_description
      property_type.show rescue "Description"
    end

    def property_type_presentation
      property_type.presentation rescue 'Properties'
    end

  end
end
