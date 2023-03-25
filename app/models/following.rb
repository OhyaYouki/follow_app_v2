class Following < ApplicationRecord

  # relationship（中間テーブル）とのアソシエーション
  has_many :relationships
  # userモデルとのアソシエーション
  has_many :users            , through: :relationships
end
