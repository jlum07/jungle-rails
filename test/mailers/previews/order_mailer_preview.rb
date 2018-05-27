
class OrderMailerPreview < ActionMailer::Preview
  def order_email
    OrderMailer.order_email(Order.find(4))
    # OrderMailer.with(order: Order.first).order_email
  end
end