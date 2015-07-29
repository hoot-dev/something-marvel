class CharactersController < ApplicationController

  def client
    Marvelite::API::Client.new(
      :public_key => ENV['marvel_public_key'],
      :private_key => ENV['marvel_private_key']
    )
  end

  def index
    response = client.characters
    @characters = response.data[:results]
  end

  def show
    response = client.character(params[:id].to_i)
    @character = response.data[:results][0]
  end
end
