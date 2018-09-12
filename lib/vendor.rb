class Vendor

  attr_reader :name,
              :inventory

  def initialize(vendor)
    @name = vendor
    @inventory = Hash.new(0)
  end

  def check_stock(item)
   @inventory[item]
  end

  def stock(item, amount)
    @inventory[item] += amount
  end


end



  # def stock(item, amount)
  #
  #   ##uuugghh how do i populate a hash with the item as the key and the
  #   #amount as the value??
  #
  #   @inventory.each do |item, amount|
  #     {item => amount}
  #   end
  #  end
