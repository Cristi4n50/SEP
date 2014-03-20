class User < ActiveRecord::Base
  has_many :assignments
  has_many :roles, :through => :assignments
  authenticates_with_sorcery!
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :username
  validates_uniqueness_of :username
  belongs_to :tipodoc
  def self.search(search)
    where("username like '%#{search}%'")
  end

  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym }
  end

end
