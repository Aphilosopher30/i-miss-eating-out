

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



  def get_hour_from_time(time)
    hours_vs_mn = time.split(":")
    return hours_vs_mn[0]
  end

  def get_mn_from_time(time)
    hours_vs_mn = time.split(":")
    return hours_vs_mn[1]
  end

  def convert_time_to_string(hour, mn)
    printable_time = hour + ":" + mn
    return printable_time
  end

  def closing_time(number)
    opens = self.opening_time
    opening_hour = get_hour_from_time(opens)
    opening_hour_int = opening_hour.to_i
    opening_mn = get_mn_from_time(opens)

    closing_hour_int = opening_hour_int + number
    closing_hour = closing_hour_int.to_s

    the_closeing_time = convert_time_to_string(closing_hour, opening_mn)

    return the_closeing_time

  end


  def add_dish(food)
    list_of_current_dishes = self.dishes
    return list_of_current_dishes.append(food)
  end




end
