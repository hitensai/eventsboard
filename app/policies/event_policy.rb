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
  
  


   
end
