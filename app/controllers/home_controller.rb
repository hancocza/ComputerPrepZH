class HomeController < ApplicationController
  def index
    @labs = Lab.where("? BETWEEN startdate AND enddate", Date.current )
    @labs.order! "startdate ASC"
    
    @nextlabs = Lab.where("? BETWEEN 'startDate' AND 'enddate", Date.current + 7)
    @nextlabs.order! "startdate ASC"
  end
end
