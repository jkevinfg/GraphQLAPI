# /app/graphql/mutations/create_order.rb
class Mutations::CreateOrder < Mutations::BaseMutation
    # especificamos los argumentos que puede tomar nuestra solicitud de mutacion
    argument :description, String, required: true
    argument :total, Float, required: true

    #especificamos los campos que devuelve nuestra solicitud de mutacion
    field :order, Types::OrderType, null: false # si la mutacion tiene exito se devolvera un objeto order
    field :errors, [String], null: false # si la mutacion falla 

    # null:false -> arrojara un error si un campo es nulo
    # null:true -> verdadero permitira que se devuelvan datos nulos sin errores

    def resolve(description:, total:)  #resolve toma los arguments
        order = Order.new(description: description, total: total)
        if order.save
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
    # todas  
    # las mutaciones tienen un campo resolve()
    # y esa funcion devuelve (como un hash) lo que devolvera la propia mutacion
end
