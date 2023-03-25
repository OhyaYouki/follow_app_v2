class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname             , presence:true
  

  has_many :posts

  # relationship（中間テーブル）とのアソシエーション
  has_many :relationships
  # followingモデルとのアソシエーション
  has_many :followings       , through: :relationships
end