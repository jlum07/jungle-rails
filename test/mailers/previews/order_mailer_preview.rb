
class OrderMailerPreview < ActionMailer::Preview
  def order_email
    OrderMailer.order_email(Order.find(1))
  end
end