class Mutations::DeleteOrder < Mutations::BaseMutation
    argument :id, ID, required: true

    field :id, ID, null:  true

    def resolve(id:)  
        order = Order.find(id)
        order.destroy
        {
            id: id
        }
    end
end
