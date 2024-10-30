Rails.application.routes.draw do

  get("/", { :controller => "zebra", :action => "rules" })
  
  get("/2d6", { :controller => "zebra", :action => "2d6" })

  get("/2d10", { :controller => "zebra", :action => "2d10" })

  get("/1d20", { :controller => "zebra", :action => "1d20" })

  get("/5d4", { :controller => "zebra", :action => "5d4" })

end
