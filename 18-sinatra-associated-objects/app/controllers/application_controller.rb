class ApplicationController < Sinatra::Base

    set :views, "app/views"
    set :method_override, true

    get "/" do 
        erb :home
    end

    get "/funtimes/:first_number/:second_number/:third_number" do
        @first = params[:first_number].to_i
        @second = params[:second_number].to_i
        @third = params[:third_number].to_i
        erb :do_now
    end



end
