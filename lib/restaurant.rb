

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


  def open_for_lunch?
    opening = get_hour_from_time(self.opening_time)
#    closing = get_hour_from_time(self.closing_time)

    if opening.to_i <= 12 #&& closing.to_i > 12
      serves_lunch = true
    else
      serves_lunch = false
    end

    return serves_lunch
  end

  def menu_dish_names
    menue_yell = []
    for dish in self.dishes
      yell_dish = dish.upcase
      menue_yell.append(yell_dish)
    end

    return menue_yell
  end




  def announce_closing_time(hours_open)
    closing_time = self.closing_time(hours_open)
    hour_closes = get_hour_from_time(closing_time)
    hour_closes_int = hour_closes.to_i

    if hour_closes_int > 12
      hour_closes_int = hour_closes_int - 12
    else
      hour_closes_int = hour_closes_int
    end

    closing_hour = hour_closes_int.to_s
    mn = get_mn_from_time(closing_time)

    new_time = convert_time_to_string(closing_hour, mn)

    return new_time

  end

end
