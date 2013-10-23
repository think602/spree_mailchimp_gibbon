require 'spec_helper'

# Insert the UserConcern for testing purposes.
Spree::User.class_eval do 
  include SpreeMailchimpGibbon::UserConcern
end

describe Spree::User do 
  
  describe '#testing' do 
    it 'should be true' do
      user = Spree::User.new
      user.testing.should be_true
    end
  end
  
end
