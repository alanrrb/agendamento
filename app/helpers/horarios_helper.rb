module HorariosHelper
	def horario_livre(hora, dia)
		link_to "Agendar", horarios_novo_path(hora,dia), remote: true, data: { confirm: "Confirmar agendamento?" }
	end

	def horario_reservado(horario)
		if current_usuario.id == horario.usuario_id
			"Reservado para #{horario.usuario.nome} #{link_para_exclusao(horario)}".html_safe
		else
			"Reservado para #{horario.usuario.nome}"
		end
	end

	def link_para_exclusao(horario)
		link_to "X", horarios_excluir_path(horario.horario[0..1],horario.dia), remote: true, data: { confirm: "Tem certeza que deseja excluir seu agendamento?" }
	end

	def horario_do_dia(hora, dia)
		hora_foramtada="#{format('%02d', hora)}:00"
		horario=Horario.where(horario: hora_foramtada, dia: dia).first
		if horario
			horario_reservado(horario)
		else
			horario_livre(hora, dia)
		end
	end
end
