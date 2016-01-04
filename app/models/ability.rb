class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user && (user.admin == true)
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard, :all        
      can :manage, :all
    end
  end
end