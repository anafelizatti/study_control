class StudyItem < ApplicationRecord
    has_many :study_comments, dependent: :destroy
    validates :title, presence: { message: 'Não pode estar em branco.'}
end
