class Produto < ApplicationRecord

    validates :quantidade, presence: true
    validates :quantidade, length: {minimum: 5} 

end
