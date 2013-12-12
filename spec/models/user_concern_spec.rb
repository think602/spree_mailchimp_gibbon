require 'spec_helper'

# Insert the UserConcern for testing purposes.
Spree::User.class_eval do 
  include SpreeMailchimpGibbon::UserConcern
end

describe Spree::User do
  it { should respond_to :gibbon } 
  it { should respond_to :mailchimp_add_to_mailing_list }
  it { should respond_to :mailchimp_remove_from_mailing_list }
  it { should respond_to :mailchimp_update_in_mailing_list }
  it { should respond_to :assign_mailchimp_subscriber_id }
  it { should respond_to :mailchimp_list_id }
  it { should respond_to :mailchimp_subscription_opts }
  it { should respond_to :mailchimp_merge_vars }
end
