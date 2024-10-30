Rails.application.routes.draw do

  get("/", { :controller => "zebra", :action => "rules" })

  get("/dice/:num_dice/:sides", { :controller => "zebra", :action => "roll_dice" })
  
  # get("/2d6", { :controller => "zebra", :action => "twobysix" })

  # get("/2d10", { :controller => "zebra", :action => "twobyten" })

  # get("/1d20", { :controller => "zebra", :action => "onebytwenty" })

  # get("/5d4", { :controller => "zebra", :action => "fivebyfour" })

end
