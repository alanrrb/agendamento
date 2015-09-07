class HorariosController < ApplicationController
  before_action :authenticate_usuario!

  def novo
  	@horario=Horario.new
  	hora_formatada=hora_formatada(params[:hora])
  	@horario.horario=hora_formatada
  	@horario.dia=params[:dia]
  	@horario.usuario=current_usuario
  	if @horario.save
  		respond_to do |format|
  	      format.js
  	    end
  	end
  end

  def excluir
  	@horario=Horario.where(horario: hora_formatada(params[:hora]), dia: params[:dia]).first
    @horario.destroy
    respond_to do |format|
       format.js
    end
  end

  def params_whitelist
  	params.permit(:hora,:dia)
  end

  private
  def hora_formatada(hora)
    "#{format('%02d', hora.to_i)}:00"
  end
end
