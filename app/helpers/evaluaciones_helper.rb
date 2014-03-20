module EvaluacionesHelper
	def unboolean(boolean_val)
		if boolean_val == true then
			return "Si"
		else
			return "No"
		end
	end
end
