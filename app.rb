class ShoppyApp < Sinatra::Base
  get '/' do
    erb :index, locals: { items: Item.all }
  end

  post '/' do
    Item.create(params[:item_title])
    redirect '/'
  end
end
