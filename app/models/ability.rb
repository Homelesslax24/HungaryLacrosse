class Ability
  include CanCan::Ability

  attr_reader :current_admin_user

  def initialize(admin_user)
  	can :read, :all
		if admin_user.super_admin == true
  		can :manage, AdminUser
      can :manage, Event
      can :manage, Article
      can :manage, Team
  	else		
      # Check variations of the AdminUser (update,destroy)
	    can :manage, AdminUser, :id => admin_user.id 
      cam :manage, Event, :admin_user_id => admin_user.id
      can :create, Event
      can :manage, Article, :admin_user_id => admin_user.id
      can :create, Article
      can :manage, Team
	  end
  end

end