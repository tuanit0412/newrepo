require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
    @update = {
      title:
      'Lorem Ipsum',
      description: 'Wibbles are fun!',
      image_url:
      'lorem.jpg',
      price:
      19.95
  }
  end


end
