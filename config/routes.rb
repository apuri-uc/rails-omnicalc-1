Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "platypus"})

  get("/square/new", { :controller => "zebra", :action => "bird"})

  get("/square/results", { :controller => "zebra", :action => "giraffe"})

  get("/square_root/new", { :controller => "zebra", :action => "elephant"})

  get("/square_root/results", { :controller => "zebra", :action => "lion"})

  get("/payment/new", { :controller => "zebra", :action => "rhino"})

  get("/payment/results", { :controller => "zebra", :action => "triangle"})

  get("/random/new", { :controller => "zebra", :action => "reindeer"})

  get("/random/results", { :controller => "zebra", :action => "orangatang"})
end 
