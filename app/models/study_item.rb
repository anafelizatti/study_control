class StudyItem < ApplicationRecord
    has_many :study_comments, dependent: :destroy
    validates :title, presence: { message: 'Não pode estar em branco.'}
    scope :search, ->(query) {where('title like ? OR category_id like ?',
    "%#{query}%", "%#{query}%")}

    def finalized?
        finalized_at.present?
    end
    
end
