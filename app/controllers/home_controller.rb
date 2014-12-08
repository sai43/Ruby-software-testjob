class HomeController < ApplicationController
   
  def index
  end

  def get_bill
  	@bill_id = generate_id
  	@auto_number = params["auto_number"]
  	@source = params["source"]
  	@destination = params["destination"]
  	@distance = params["distance"]
  	@fare = get_fare(params["distance"])
  	respond_to do |format|
    	format.html
	  end
  end
  def get_fare distance
  	if distance
  		distance = distance.to_f
  	  	if distance <= 1.5
  	  		return 20
  	  	else
  	  		distance = (distance - 1.5).ceil
  	  		return 20 + (distance * 10)
  	  	end
	   else
		  return 0; 
	  end
  end

  def generate_id
  	return SecureRandom.hex(16)
  end
    
end
