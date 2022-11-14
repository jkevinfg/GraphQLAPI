module Types
  class MutationType < Types::BaseObject
    field :create_order, mutation: Mutations::CreateOrder
  end
end

# ahora cuando enviemos una mutacion de graphql llamada
# createOrder, los argumentos que proporcionames se enviaran 
# a la clase Mutations::CreateOrder que esta en  
# /app/graphql/mutations/create_order.rb 
