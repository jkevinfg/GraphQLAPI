module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :all_orders, [Types::OrderType], null: false

    def all_orders
      Order.all
    end

    field :order, Types::OrderType, null: false do
      argument :id, ID, required: true
      description 'find order by id'
    end    
    
    def order(id:)
      Order.find(id)
    end
  end
end
