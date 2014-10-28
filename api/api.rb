require 'pry'
require 'grape'
require './api/beer.rb'

module BeerAPI
  class API < Grape::API
    version 'v1', using: :path, vendor: 'beer'
    format :json
    prefix :api

    resource :beer do
      desc 'return a list of beer styles'
      get :styles do
        Beer.styles
      end

      desc 'return a list of styles'
      get :names do
        Beer.names
      end

      desc 'return all beers'
      get :beers do
        Beer.beers
      end

      desc 'return a single beer by id'
      params do
        requires :id, type: Integer, desc: 'Status id'
      end
      get :beer do
        Beer.beer params[:id]
      end
    end
  end
end
