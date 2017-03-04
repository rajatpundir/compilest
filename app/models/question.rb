class Question < ApplicationRecord

	scope :sorted, lambda {order('id DESC')}

end
