module MyAttrAccessor
  def my_attr_accessor(*names)
    names.each do |name|
      var_name = "@#{name}".to_sym
      define_method(name) { instance_variable_get(var_name) }
      define_method("#{name}=") do |value| 
        instance_variable_set(var_name, value)
      end
    end
  end
end

class Test
  extend MyAttrAccessor

  my_attr_accessor :test, :test2, :test3
end