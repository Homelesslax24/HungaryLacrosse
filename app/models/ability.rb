class Ability
  include CanCan::Ability

  attr_reader :current_admin_user

  def initialize(admin_user)
  	can :read, :all
		if admin_user.super_admin == true
  		can :manage, AdminUser
      can :manage, Article
  	else		
	    can :manage, AdminUser, :id => admin_user.id
      can :manage, Article, :admin_user_id => admin_user.id
      can :create, Article
	  end
  end

end