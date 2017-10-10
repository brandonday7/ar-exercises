class Store < ActiveRecord::Base
  has_many :employees
  validates_length_of :name, :minimum => 3
  validates :annual_revenue, :presence => true,
                             :numericality => {greater_than_or_equal_to: 0}

  validate :must_carry_men_or_women

  def must_carry_men_or_women
    if !mens_apparel && !womens_apparel
      errors.add(:must_carry_men_or_women, "must carry either men's or women's apparel")
    end
  end

end
