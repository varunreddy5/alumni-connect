class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

  # attr_accessor :remember_token
  before_save { self.email = email.downcase}
  validates_presence_of :username
  validates_uniqueness_of :username
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX}, uniqueness: { case_sensitive: true }
  # has_secure_password
  # validates :password, presence: true, length: { minimum: 8 }

  has_many :active_relationships, class_name: "Relationship", foreign_key: :follower_id, dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  
  has_many :passive_relationships, class_name: "Relationship", foreign_key: :followed_id, dependent: :destroy
  has_many :followers, through: :passive_relationships, source: :follower

  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy

  has_many :notifications, as: :recipient
  has_many :services

  def to_param
    username
  end

  # Returns the hash digest of the given string
  # def self.digest(string)
  #   cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
  #   BCrypt::Password.create(string, cost: cost)
  # end

  # # Returns a new string of length 22
  # def self.new_token
  #   SecureRandom.urlsafe_base64
  # end
  
  # def remember
  #   self.remember_token = User.new_token
  #   update_attribute(:remember_digest, User.digest(remember_token))
  # end

  # def authenticated(remember_token)
  #   return false if remember_digest.nil?
  #   #Decryption
  #   BCrypt::Password.new(remember_digest) == remember_token 
  # end

  # def forget
  #   update_attribute(:remember_digest, nil)
  # end
  
  def follow(other_user)
    following << other_user
  end

  def unfollow(other_user)
    following.delete(other_user)
  end

  def following?(other_user)
    following.include?(other_user)
  end

end
