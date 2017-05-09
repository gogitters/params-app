class PagesController < ApplicationController
  def query_params_method
    puts "$$$$$$$$$$"
    puts params["foobar"]
    @message = params["foobar"]
    @message2 = params[:purple_hippo]
    render "query_params.html.erb"
  end
end
