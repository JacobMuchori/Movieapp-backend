class UserController < Sinatra::Base

    set :default_content_type, 'application/json'
    
    configure do
        enable :cross_origin
      end
    
      before do
        response.headers['Access-Control-Allow-Origin'] = '*'
      end
    
      options "*" do
        response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
        response.headers["Access-Control-Allow-Origin"] = "*"
        200
      end

    get "/user" do
      users = User.all
      users.to_json
    end

    post '/auth/register' do
        begin
          data = JSON.parse(request.body.read)
          users = User.create(data)
          users.to_json
        rescue => e
            error_response(422, e)
        end
    end

    post '/auth/login' do
      request.body.rewind
      request_payload = JSON.parse(request.body.read)
      email = request_payload['email']
      password = request_payload['password'].to_i
      user = User.find{ |u| u[:email] == email && u[:password] == password }
      if user
        {message: "Login success!"}.to_json
      else
        {message: "Invalid email or password"}.to_json
      end
    
    end
   

    post '/users/:id/movies' do
      user = User.find(params[:id])
      movie = user.movies.new(params[:movie])
      if movie.save
        redirect "/users/#{user.id}"
      else
        "There was an error saving your movie."
      end
    end

    # get '/users/:id' do
    #   users = User.find(params[:id])
    #   users.movies.each do |movie| 
    # end
end