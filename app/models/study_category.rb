class StudyCategory < ApplicationRecord
    validates :title, presence: { message: 'Não pode estar em branco.'}
end
