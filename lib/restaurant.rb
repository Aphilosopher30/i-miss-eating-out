

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

  def closing_time(number)
    opens = self.opening_time
    hours_vs_mn = opens.split(":")
    opens_as_int = hours_vs_mn[0].to_i
    closing_hour = opens_as_int + number
    the_closeing_time = closing_hour.to_s + ":" + hours_vs_mn[1]

    return the_closeing_time

  end

  def add_dish(food)
    list_of_current_dishes = self.dishes
    return list_of_current_dishes.append(food)
  end




end
