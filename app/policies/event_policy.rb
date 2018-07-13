class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
  

  def index?
   true
  end
  def show?
       scope.where(:id => record.id).exists?

   end
  def create?
       user.present?
  end


  def new?
    create?
  end
  def edit?
   update?
  end

  def update?
     user.present? && user == event.organizer
  
  end	

  def destroy?
     user.present? && user == event.organizer
  end

   
end
