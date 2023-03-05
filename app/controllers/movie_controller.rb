class MovieController < Sinatra::Base

    set :default_content_type, 'application/json'
    
      configure do
        enable :cross_origin
      end
    
      before do
        response.headers['Access-Control-Allow-Origin'] = '*'
      end
    
      options "*" do
        response.headers["Allow"] = "GET, PUT, POST, DELETE"
        response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
        response.headers["Access-Control-Allow-Origin"] = "*"
        response.headers["Access-Control-Allow-Methods"] = "GET, PUT, POST, DELETE"
        200
      end

    get '/movies' do
        movies = Movie.all.order(year: :desc)
        movies.to_json
    end

    post '/create' do
        begin
            data = JSON.parse(request.body.read)
            data["originally_fetched"] = false
            movies = Movie.create(data)
            movies.to_json
        rescue => e 
            {
                error: e.message
            }.to_json
    end
    end 

    get '/search' do
        query = params[:query]
        matching_movies = Movie.select{ |movie| movie[:title].include?(query) || movie[:year].to_s.include?(query) }
        matching_movies.to_json
        end

    delete '/movies/destroy/:id' do
        begin
        movie = Movie.find(params[:id])
        movie.destroy
    rescue => e 
        [422, {
            error: e.message
    }.to_json]
    end
    end

    put '/movies/update/:id' do 
        data = JSON.parse(request.body.read)
        begin
            movies = Movie.find(params[:id])
            movies.update(data)
                { message: "updated successfully" }.to_json
            rescue => e 
                [422, {
                    error: e.message
            }.to_json]
        end
    end

end