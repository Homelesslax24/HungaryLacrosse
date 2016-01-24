class Ability
  include CanCan::Ability

  attr_reader :current_admin_user

  def initialize(admin_user)
  	can :read, :all
    can :manage, Team
    can :manage, Sponsor
		if admin_user.super_admin == true
  		can :manage, AdminUser
      can :manage, Event
      can :manage, Article
  	else		
      # Check variations of the AdminUser (update,destroy) xxxx
	    can :manage, AdminUser, :id => admin_user.id 
      cam :manage, Event, :admin_user_id => admin_user.id
      can :create, Event
      can :manage, Article, :admin_user_id => admin_user.id
      can :create, Article
	  end
  end

end