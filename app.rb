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

  get "/say/:number/:phrase" do
      @number = params[:number].to_i
      @phrase = params[:phrase].gsub("%20", " ")
      @phrases = []
        @number.times do
             @phrases << @phrase
        end
        # @p = @phrases.gsub(',"', ' ').flatten
        @p = @phrases
        "#{@p}"


  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
      @a = []
      params.each do |k,v|
         @a << v
      end
       @dis = @a.gsub('" ,"', ' ')

       @dis.gsub("[ ]", " ").to_s


  end

end
