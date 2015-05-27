module HomeHelper
	def activetab(in_action,selected_action)
		'active' if in_action == selected_action
	end
	def goto(name,action)
		link_to name, :action=>action
	end
end
