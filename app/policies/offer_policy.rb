class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def new?
    return true
  end

  def show?
    return true
  end

  def edit?
    record.user_id == user.id
  end

  def update?
    record.user_id == user.id
  end

  def delete?
    record.user_id == user.id
  end

  def index?
    return true
  end
end
