require 'spec_helper'

describe "Spree::SubscriptionsController" do 
  
  describe "strong params" do 
    it "should contain :is_mail_list_subscriber" do 
      Spree::PermittedAttributes.user_attributes.
        include?(:is_mail_list_subscriber).should be_true
    end
    
    it "should not contain the string 'is_mail_list_subscriber'" do 
      Spree::PermittedAttributes.user_attributes.
        include?("is_mail_list_subscriber").should be_false
    end
  end
end
