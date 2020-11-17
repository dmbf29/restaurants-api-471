class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    # user => current_user
    # record => whatever we authorized
    record.user == user
  end

  def create?
    user
  end

  def destroy?
    update?
  end
end
