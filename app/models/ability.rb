class Ability
  include CanCan::Ability

  attr_reader :current_admin_user

  def initialize(admin_user)
  	can :read, :all
    can :manage, AdminUser, :id => admin_user.id

  end

end