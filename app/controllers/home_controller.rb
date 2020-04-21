class HomeController < ApplicationController
  def index
    @labs = Lab.where("? BETWEEN 'startDate' AND 'endDate'", Date.current )
    @labs.order! "\"startDate\" ASC"
    
    @nextlabs = Lab.where("? BETWEEN 'startDate' AND 'endDate'", Date.current + 7)
    @nextlabs.order! "\"startDate\" ASC"
  end
end
