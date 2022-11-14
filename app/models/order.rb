class Order < ApplicationRecord
    has_many :payments, dependent: :destroy do
        def successful
            where("status = ?", "Successful")
        end
    end
    # ahora si ejecutamos order.payments.successful
    # devolveran los pagos con estado igual a Exitoso
    
    def custom_info
        self.description
    end
end
