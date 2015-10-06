class Car
  @@instances = 0

  def self.debug(msg)
    puts msg
  end

  debug "Start class"

  def initialize
    @@instances += 1
  end

  def self.instances
    @@instances
  end


  def m
  end

  debug "End class"
end

