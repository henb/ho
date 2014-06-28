class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    can :read, :all

    if user.admin?
      can :manage, :all
    elsif user.user?
      can :manage, Comment
    end

  end
end
