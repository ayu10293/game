class RareCalculationForm
  include ActiveModel::Model # 通常のモデルのようにvalidationなどを使えるようにする
  include ActiveModel::Attributes # ActiveRecordのカラムのような属性を加えられるようにする

  attribute :target_rare, :integer
  attribute :rare_9, :integer
  attribute :rare_8, :integer
  attribute :rare_7, :integer
  attribute :rare_6, :integer
  attribute :rare_5, :integer
  attribute :rare_4, :integer
  attribute :rare_3, :integer
  attribute :rare_2, :integer
  attribute :rare_1, :integer

  validates :target_rare, presence: true, numericality: { greater_than_or_equal_to: 4, less_than_or_equal_to: 12 }
  validates :rare_9, presence: true
  validates :rare_8, presence: true
  validates :rare_7, presence: true
  validates :rare_6, presence: true
  validates :rare_5, presence: true
  validates :rare_4, presence: true
  validates :rare_3, presence: true
  validates :rare_2, presence: true
  validates :rare_1, presence: true
end