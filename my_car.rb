class MyCar
    attr_reader :year 
    attr_writer :color

    def initialize(y, c, m)
        @year = y
        @color = c
        @model = m
        @speed = 0
    end

    def accel(number)
        @speed += number
        "You're now traveling #{@speed} mph!"
    end

    def decel(number)
        if @speed - number < 0 
          @speed = 0
          puts "You are stopped."
        else
          @speed -= number
          "You slowed down to #{@speed} mph."
        end
    end

    def stop
        @speed = 0    
        "I can't believe you decided to stop."
    end

    def change_info(c)
        self.color = c
    end
    
    def view_year
        "It's a #{self.year}. Nice."
    end
    
    def info
        "It's a #{@year}, #{@color} #{@model}. Nice."
    end
    
    def spray_paint(spray)
        self.color = spray
        "Whoa! You spray painted the car #{self.color}!"
    end

    def to_s
        "This #{@year}, #{@color} #{@model} is an upstanding member of the community."
    end

end