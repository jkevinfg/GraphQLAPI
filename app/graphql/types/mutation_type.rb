module Types
  class MutationType < Types::BaseObject
    field :create_order, mutation: Mutations::CreateOrder
    field :update_order, mutation: Mutations::UpdateOrder
    field :delete_order, mutation: Mutations::DeleteOrder
  end
end

# ahora cuando enviemos una mutacion de graphql llamada
# createOrder, los argumentos que proporcionames se enviaran 
# a la clase Mutations::CreateOrder que esta en  
# /app/graphql/mutations/create_order.rb 
