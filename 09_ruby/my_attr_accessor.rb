module MyAttrAccessor
  def attr_accessor_with_history(*names)
    names.each do |name|
      var_name = "@#{name}".to_sym
      define_method(name) { instance_variable_get(var_name) }

      define_method("#{name}_history") do        
        instance_variable_get("@#{name}_history")
      end

      define_method("#{name}=") do |value|
        history = instance_variable_get("@#{name}_history")
        instance_variable_set("@#{name}_history", []) unless history 

        current_val = instance_variable_get(var_name)
        history = instance_variable_get("@#{name}_history")
        history << current_val

        instance_variable_set(var_name, value)
      end
    end
  end
end

class Test
  extend MyAttrAccessor

  attr_accessor_with_history :test, :test2, :test3
end
