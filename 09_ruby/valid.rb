module Validation
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    def validate(name, *args)      
      instance_variable_set(:@validates, {}) unless instance_variable_get(:@validates)
      validates = instance_variable_get(:@validates)
      validates[name] ||= {}
      validates[name][args.first] = args[1..-1]
    end
  end

  module InstanceMethods
    def validate!
      validates = self.class.instance_variable_get(:@validates)
      validates.each do |name, validators|
         var_value = instance_variable_get("@#{name}")
         validators.each do |validator, args|
           send validator, var_value, *args
        end
      end
      true
    end

    def valid?
      validate!
    rescue RuntimeError
      false
    end

    protected

    def presence(value, *args)
      fail "Value can't be nil" if value.nil? || value == ''
    end

    def format(value, *args)
      fail 'Value has invalid format' if value !~ args.first
    end

    def type(value, *args)
      fail "Value must be #{args.first}" unless value.is_a?(args.first)
    end
  end
end

class Train
  include Validation

  attr_accessor :number, :station

  validate :number, :presence
  validate :number, :type, Fixnum

  def initialize
    @number = 1
    @station = Station.new('depo')
    validate!
  end
end

class Station
  include Validation

  attr_accessor :name

  validate :name, :presence
  validate :name, :type, String

  def initialize(name)
    @name = name
    validate!
  end
end