class StudyItem < ApplicationRecord
    has_many :study_comments
    validates :title, presence: { message: 'Não pode estar em branco.'}
end
