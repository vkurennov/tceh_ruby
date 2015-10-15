class Foo
  def long_method
    sleep(3)
  end

  def m
    @m ||= long_method
  end
end