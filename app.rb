class App < Padrino::Application

  register ::Padrino::Helpers
  
  get "/" do
    render :empty
  end

  get "/onclick" do
    render :onclick
  end

end
