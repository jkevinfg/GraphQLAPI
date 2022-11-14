class Mutations::UpdateOrder < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :attributes, Types::OrderAttributes, required: true

    field :order, Types::OrderType, null: false 
    field :errors, [String], null: false 

    def resolve(id:, attributes:)  
        order = Order.find(id)
        if order.update(attributes.to_h)
            {
                order: order,
                errors: []
            }
        else
            {
                order: nil,
                errors: order.errors.full_messages
            }
        end
    end

end
