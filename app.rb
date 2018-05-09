require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
      @name = params[:name]
       "#{@name.reverse}"
  end

  get "/square/:number" do
      @number = params[:number].to_i
      @squared = @number * @number
      "#{@squared}"
  end

  # get "/say/:number/:phrase" do
  #     @number = params[:number].to_i
  #     @phrase = params[:phrase].gsub("%20", " ")
  #     @phrases = []
  #     binding.pry
  #       @number.times do
  #            @phrases << @phrase
  #       end
  #       # @p = @phrases.gsub(',"', ' ').flatten
  #       @p = @phrases
  #       binding.pry
  #       "#{@p}"
  #
  #
  # end

  get "/:operation/:number1/:number2" do
      @number1 = params[:number1].to_i
      @number2 = params[:number2].to_i
      @operation = params[:operation]

      if @operation = "%2A"
           @total = @number1 * @number2
       elsif @operation = "%2B"
           @total = @number1 + @number2
       elsif @operation = "%2D"
           @total = @number2 - @number1
       elsif @operation = "%2F"
           @total = @number1 / @number2
       end
      "#{@total}"

  end

end
