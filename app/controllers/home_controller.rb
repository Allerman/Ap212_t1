class HomeController < ApplicationController
    def index
      @cozinhas = Cozinha.all
      @banheiros = Banheiro.all
      @lavanderias = Lavanderium.all
      @quartos = Quarto.all
    end
  end
  