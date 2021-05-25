module Spree
  class InfosController < Spree::StoreController
  respond_to :html

  # GET /infos or /infos.json

  def termns_and_conditions
      #Terms and Conditions of use;
  end

  def privacy_policy
      #Privacy Policy 
      #(how you deal with your customers' personal information);
  end

  def returns_and_cancellations_policy
      #Returns and Cancellations Policy;
  end

  def contact_us
    #Full contact details 
    #(including your physical address, email, and phone number);
  end

  def about_us
    #Company legal name and registration number;
  end


  end
end
