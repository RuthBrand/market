require 'pry'
class Market

  attr_reader :name,
              :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(stuff)
    @vendors.keep_if do |vendor|
      # binding.pry
      vendor.inventory.keys.include?(stuff)
    end
  end

  def sorted_item_list
    #ok go through each vendor take the items and sort them alphabetically. cool.
    #enumerables everywhere
    stuff_to_sort = []
    @vendors.each do |vendor|
      stuff_to_sort << vendor.values
    end
    final_sorted = stuff_to_sort.sort
    the_real_final_sorted = final_sorted.uniq
    the_real_final_sorted
  end

end
