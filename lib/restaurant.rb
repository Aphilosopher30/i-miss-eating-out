

class Restaurant


  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def opening_time
    return @opening_time
  end

  def name
    return @name
  end

  def dishes
    return @dishes
  end


end
