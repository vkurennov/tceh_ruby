class Foo
  def initialize
    @bar = "instance var"
  end

  class_eval do
    def anoter
      # ...
    end
  end

  private

  def private_method
    puts 'private'
  end
end