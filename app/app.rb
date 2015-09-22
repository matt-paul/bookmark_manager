require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  # ... app code here ...

  get '/' do
    erb :index
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end


    # start the server if ruby file executed directly
    run! if app_file == $0


end
