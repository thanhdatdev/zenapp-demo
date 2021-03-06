# frozen_string_literal: true

module Spree
  class HomeController < Spree::StoreController
    helper 'spree/products'
    respond_to :html
    before_action :load_product, only: :show
    
    def index
      @searcher = build_searcher(params.merge(include_images: true))
      @products = @searcher.retrieve_products
      @taxonomies = Spree::Taxonomy.includes(root: :children)
    end
  end
end
