class PagesController < ApplicationController
  def query_params_method
    @message = params["foobar"]
    @message2 = params[:purple_hippo]
    if params[:name]
      @message = "bha"
    end
    render "query_params.html.erb"
  end

  def name_game_method
    if params[:name]
      @name = params[:name].upcase
      if @name.starts_with?("A")
        @message = "Your names starts with A. Cool!"
      end
    else
      @name = "You didn't put in a name!!! Do that!!!"
    end
    render "name_game_view.html.erb"
  end

  def guess_number_method
    number = 42
    if params[:number]
      @guessed_number = params[:number].to_i
    else
      @guessed_number = params[:number]
    end
    if @guessed_number.nil?
      @message = "Put in a number dummy."
    elsif @guessed_number > number
      @message = "Too high! Try again."
    elsif @guessed_number == number
      @message = "Congrats! You guessed it."
    elsif @guessed_number < number
      @message = "Too low! Try again."
    end
    render "guess_number.html.erb"
  end
end
