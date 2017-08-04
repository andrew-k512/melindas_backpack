class Backpack
  def initialize(attributes)
    @attributes = attributes 
    @items = []
    prepare
  end

  def items
    @items
  end

  def add_weather_appropriate_clothing_to_pack
    weather_conditions = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]

    # Ensure appropriate clothing is added to backpack
    if weather_conditions == 'rainy'
      @items << 'pants'
      @items << 'shirt'
      @items << 'umbrella'
    elsif weather_conditions == 'cold'
      @items << 'pants'
      @items << 'shirt'
      @items << 'jacket'
    else
      @items << 'pants'
      @items << 'shirt'
    end
  end

  def add_gym_shoes
    weather_conditions = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]

    # Ensure gym shoes are added to backpack for gym days monday & thursday.
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end
  end

  def add_packed_lunch_on_weekdays
    weather_conditions = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]

    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    end
  end


  def prepare
    add_weather_appropriate_clothing_to_pack
    add_gym_shoes
    add_packed_lunch_on_weekdays
  end

  # Prints a summary packing list for Melinda's backpack
  def print_backpack_list
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
