require 'json'
file = File.read('/home/naveen/Desktop/collection.json')
data_hash = JSON.parse(file)
account = Account.new
service = Service.new
product = Product.new
subscription = Subscription.new
data_hash["included"].each do |data|
  if data["type"].eql? "services"
    data.each do |key,value|
      if key.eql? "id"
        service.id = value
      elsif key.eql? "attributes"
        service.msn = value["msn"]
        service.credit = value["credit"]
        service.credit_expiry = value["credit-expiry"]
        service.data_usage_threshold = value["data-usage-threshold"]
      end
      service.save!
    end
  elsif   data["type"].eql? "subscriptions"
    data.each do |key,value|
      if key.eql? "id"
        subscription.id = value
      elsif key.eql? "attributes"
        subscription.included_data_balance = value["included-data-balance"]
        subscription.included_credit_balance = value["included-credit-balance"]
        subscription.included_rollover_credit_balance = value["included-rollover-credit-balance"]
        subscription.included_rollover_data_balance = value["included-rollover-data-balance"]
        subscription.included_international_talk_balance = value["included-international-talk-balance"]
        subscription.expiry_date = value["expiry-date"]
        subscription.auto_renewal = value["auto-renewal"]
        subscription.primary_subscription = value["primary-subscription"]
      end
      subscription.save!
    end
  elsif   data["type"].eql? "products"
    data.each do |key,value|
      if key.eql? "id"
        product.id = value
      elsif key.eql? "attributes"
        product.name = value["name"]
        product.included_data = value["included-data"]
        product.included_credit = value["included-credit"]
        product.included_international_talk = value["included-international-talk"]
        product.unlimited_text = value["unlimited-text"]
        product.unlimited_talk = value["unlimited-talk"]
        product.unlimited_international_text = value["unlimited-international-text"]
        product.unlimited_international_talk = value["unlimited-international-talk"]
        product.price = value["price"]
      end
      product.save!
    end
  end
end
data_hash["data"].each do |key, value|
  if key.eql? "id"
    account.id = value
  elsif key.eql? "attributes"
    account.payment_type = value["payment-type"]
    account.unbilled_charges = value["unbilled-charges"]
    account.next_billing_date = value["next-billing-date"]
    account.title = value["title"]
    account.first_name = value["first-name"]
    account.last_name = value["last-name"]
    account.date_of_birth = value["date-of-birth"]
    account.contact_number = value["contact-number"]
    account.email = value["email-address"]
    account.email_verified = value["email-address-verified"]
    account.email_subscription_status = value["email-subscription-status"]
    account.save!
  end

end
