class UserController < Sinatra::Base

    set :default_content_type, 'application/json'

    post '/user' do
        users = User.create(
            name: params[:name],
            email: params[:email],
            password: params[:password]
        )
    end

end