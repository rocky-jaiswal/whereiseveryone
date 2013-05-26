class HomeController < ApplicationController
  
  def index
    render :json => {"hello" => "world"}.to_json
  end

end
