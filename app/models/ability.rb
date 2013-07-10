class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role? "admin"
        can :manage, :all
    else
        can :create, User
        can :edit, User do |u|
            u.id == user.id
            end
        can :read, Recipe
        can :read, Author

    end


  end

end
