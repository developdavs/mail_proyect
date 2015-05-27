class Email < ActionMailer::Base
  default from: "from@example.com"

  def mymail(parameters)
    send_mail(parameters,"assen.david@gmail.com","New Message")
  end

  def esend(parameters)
    send_mail(parameters,parameters[:email],"Thank you")
  end

  private
    def send_mail(parameters,email,subject)
      @nombre = parameters[:nombre]
      @email = parameters[:email]
      @asunto = parameters[:asunto]
      @mensaje = parameters[:mensaje]

      mail :to => email, :subject => subject
    end
end
