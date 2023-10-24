Rails.application.routes.draw do
  get("/", :controller => "game", :action => "homepage")
  get("/dice/:zebra/:sides", { :controller => "game", :action => "roll_dice"})
end
