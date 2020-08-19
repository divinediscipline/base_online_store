class OrderMailer < ApplicationMailer
  # this is like a normal controller with actions but for emails
  # each action in this mailer controller, has two corresponding view file. one in html and one in text

  default from: 'Sam Ruby <depot@example.com>'


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(order)
    @order = order

    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped(order)
    @order = order
    
    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end
  
end
