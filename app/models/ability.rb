class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    can :read, :all
    can :top, Hotel

    if user.admin?
      can :manage, :all
    elsif user.user?
      can [:create,:new], Hotel
      can :create, Comment
      can :destroy, Comment do |comment|
        comment.autor? user
      end 
    end

  end
end
