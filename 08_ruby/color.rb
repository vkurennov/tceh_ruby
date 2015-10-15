# class Color
#   def code(name)
#     @code = case name
#     when :red
#       "#f00"
#     when :green
#       "#0f0"
#     when :blue
#       "#00f"
#     else
#       "#000"
#     end      
#   end
# end

class Color
  COLORS = { red: "#f00", green: "#0f0", blue: "#00f" }

  def code(name)
    @code = COLORS[name] || "#000"
  end

  alias_method :by_name, :code
end