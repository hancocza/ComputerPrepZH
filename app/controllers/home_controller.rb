class HomeController < ApplicationController
  def index
    @labs = Lab.where("? BETWEEN labs.startDate AND labs.endDate", Date.current )
    @labs.order! 'labs.startDate ASC'
    
    @nextlabs = Lab.where("? BETWEEN labs.startDate AND labs.endDate", Date.current + 7)
    @nextlabs.order! 'labs.startDate ASC'
  end
end
