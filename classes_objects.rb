class GoodDog
    attr_accessor :name, :age, :height, :weight
    @@number_of_dogs = 0
    DOG_YEARS = 7

    def initialize(n, a, h ,w)
        @name = n
        @age = a * DOG_YEARS
        @height = h
        @weight = w
        @@number_of_dogs += 1
    end

    def speak
        "Woof!"
    end

    def change_info(n, a, h, w)
        self.name = n
        self.age = a * DOG_YEARS
        self.height = h
        self.weight = w
    end

    def info
        "#{self.name} is #{age} in dog years, weighs #{self.weight}, is #{self.height} tall, and goes #{self.speak}"
    end

    def self.total_number_of_dogs
        @@number_of_dogs
    end

    def self.what_am_i
        "I'm a GoodDog class"
    end

    def what_is_self
        self
    end
end

cupcake = GoodDog.new("Cupcake",12,"18.5 in.","59.9 lbs.")
dusty = GoodDog.new("Dusty",8,"19 in","28.14 lbs.")

# self, inside of an instance method, references the instance (object) that called the method - the calling object. Therefore, self.weight= is the same as sparky.weight=, in our example.
# self, outside of an instance method, references the class and can be used to define class methods. Therefore if we were to define a name class method, def self.name=(n) is the same as def GoodDog.name=(n).