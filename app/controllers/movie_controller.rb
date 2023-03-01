class MovieController < Sinatra::Base

    set :default_content_type, 'application/json'

    get '/movies' do
        movies = Movie.all.order(year: :desc)
        movies.to_json
    end

    get '/movies/:user_id' do 
        movies = Movie.find(params[:user_id])
        movies.to_json
    end

    post 'movies/:user_id' do
        movies = Movie.create(
            name: params[:name],
            title: params[:title],
            year: params[:year],
            description: params[:description],
            user_id: params[:user_id]
        )
        movies.to_json 
    end 

    get '/movies/:year' do
        movies = Movie.find_by(params[:year] || params[:title]) 
        movies.to_json
    end

    delete '/movies/:user_id' do 
        movies = Movie.find_by(params[:user_id])
        movies.destroy
        movies.to_json
    end

    put '/movies/:id' do 
        movies = Movie.find(params[:id])
        movies.update(
            name: params[:name],
            title: params[:title],
            year: params[:year],
            description: params[:description]
        )
    end

end