require 'rubygems'
require 'httparty'

class GrandExchange
  include HTTParty
  base_uri "services.runescape.com/"

  def posts
    self.class.get("/m=itemdb_rs/api/catalogue/category.json?category=9")
  end
end

studiouslamp_resty = GrandExchange.new
puts studiouslamp_resty.posts

#https://services.runescape.com/m=itemdb_rs/api/catalogue/category.
#json?category=X
#x is the category identification number
# 9 = Summoning
