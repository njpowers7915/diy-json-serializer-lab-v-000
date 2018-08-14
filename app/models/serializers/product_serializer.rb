class ProductSerializer < ActiveRecord::Base
  def self.serialize(product)

    # start with the open brace to create a valid JSON object
    serialized_product = '{'

    serialized_product += '"id": ' + post.id.to_s + ', '
    serialized_product += '"name": "' + post.title + '", '
    serialized_product += '"price": "' + post.title + '", '
    serialized_product += '"inventory": "' + post.author.name + '"}'

    # and end with the close brace
    serialized_post += '}'
  end

end
