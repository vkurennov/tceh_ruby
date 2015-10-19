module Validation

  def validate(object, check, arg=nil)

    instance_variable_set(:@rules, {}) unless instance_variable_get(:@rules)
    rules = instance_variable_get(:@rules)
    rules[check]=[object, arg]

    define_method("validate!") do
      puts rules
      rules.each do |check, args|
        var_name = "@#{args[0]}".to_sym
        parameter = args[1]
        value = instance_variable_get(var_name)
        send check, var_name.to_s, value, parameter
      end
    end

    define_method("presence") do |arg, value, parameter|
      raise ArgumentError, "Пустое значение параметра #{arg}" if value.nil? || value.to_s.empty?
    end

    define_method("type") do |arg, value, parameter|
      raise ArgumentError, "Неверный тип параметра #{arg}. Должен быть #{parameter},
      а присвоен #{value.class}" if value != parameter
    end

    define_method("format") do |arg, value, parameter|
      raise ArgumentError, "Неверный формат параметра #{arg}." unless value =~ parameter
    end

    define_method("valid?") do
      begin
        !!validate!
      rescue ArgumentError
        false
      end
    end
  end
end

class Test
  extend Validation
  
  attr_accessor :name, :test
  
  validate :name, :presence
  validate :name, :type, String

  validate :test, :presence
  validate :test, :format, /[A-Z]+/
end