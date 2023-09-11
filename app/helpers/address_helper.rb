module AddressHelper
  def combine_address(street, city, state, zip)
    address = [street, city, state, zip]
    address.compact.join(', ')
  end
end