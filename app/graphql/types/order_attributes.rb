module Types
    class OrderAttributes < Types::BaseInputObject
      description "Attributes for creating or updating a order"
      argument :description, String, "text description order product", required: true
      argument :total, Float, "total price", required: true
    end
end