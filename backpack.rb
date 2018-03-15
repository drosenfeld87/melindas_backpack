class Backpack
  def initialize(attributes)
    @attributes = attributes
    @items = []
    pack_backpack
  end

  def items
    @items
  end

  def pack_backpack
    weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]

    def weather
      @attributes[:weather]
    end
    @items = ['pants', 'shirt']
    if weather == 'rainy'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'jacket'
    end

    def day_of_week
      @attributes[:day_of_week]
      @items
    end
    if day_of_week == 'tuesday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end

    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    end
  end

  def items_to_pack
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
