Whereiseveryone::Application.routes.draw do
  get "/status(/:datex)" => "status#get_status"
end
