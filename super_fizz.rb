class SuperFizz

  def super_fizz_first
    (0..1000).each do |number|
      if number == 0
        puts number
      elsif number % 3 == 0 && number % 5 == 0 && number % 7 == 0
        puts "SuperFizzBuzz"
      elsif number % 3 == 0 && number % 7 == 0
        puts "SuperFizz"
      elsif number % 5 == 0 && number % 7 == 0
        puts "SuperBuzz"
      elsif number % 3 == 0 && number % 5 == 0
        puts "FizzBuzz"
      elsif number % 3 == 0
        puts "Fizz"
      elsif number % 5 == 0
        puts "Buzz"
      elsif number % 7 == 0
        puts "Super"
      else
        puts number
      end
    end
  end

  def super_fizz_second(number)
    a = []
    if number % 7 == 0
      a << "Super"
    end
    if number % 3 == 0
      a << "Fizz"
    end
    if number % 5 == 0
      a << "Buzz"
    end
    if number == 0
      a = []
    end
    if a.include?("Super") || a.include?("Fizz") || a.include?("Buzz")
      puts a.join("")
    else
      puts number
    end
  end
end

fizz = SuperFizz.new
fizz.super_fizz_first
(0..1000).each do |number|
  fizz.super_fizz_second(number)
end
