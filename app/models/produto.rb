class Produto < ApplicationRecord

    belongs_to :departamento

    validates :quantidade, presence: true
    validates :quantidade, length: {minimum: 5} 

end
