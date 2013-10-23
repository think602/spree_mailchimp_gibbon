require 'spec_helper'

# Insert the UserConcern for testing purposes.
Spree::User.class_eval do 
  include SpreeMailchimpGibbon::UserConcern
end

describe Spree::User do 
end
