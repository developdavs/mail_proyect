class HomeController < ApplicationController
  def index
  	@title = "Pagina Inicial"
  end

  def contact
  	@title = "Contacto"

  	if request.post?
  		begin
  			if Email.mymail(params).deliver and Email.esend(params).deliver
  				flash.now[:noticia] = "Enviado Correctamente"
  			end
  		rescue => error
  			flash.now[:error] =  error
  		end
  	end
  end
end