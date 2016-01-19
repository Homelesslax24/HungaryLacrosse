class Ability
  include CanCan::Ability

  attr_reader :current_admin_user

  def initialize(admin_user)
  	can :read, :all
		if admin_user.super_admin == true
  		can :manage, :all
  		can :create, :all
  	else		
	    can :manage, AdminUser, :id => admin_user.id
	    can :read, actions, [:show]
	  end
  end

end