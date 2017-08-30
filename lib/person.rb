require 'pry'

class Person
  def initialize(name = nil, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene

    def name
      @name
    end

    def bank_account
      @bank_account #attr_accessor :bank_account
    end

    def bank_account=(new_funds)
      @bank_account = new_funds
    end

    def happiness
      @happiness
    end

    def happiness=(new_happiness)
      if new_happiness > 10
       @happiness = 10
     elsif new_happiness < 0
       @happiness = 0
     else
       @happiness = new_happiness
     end
   end

   def hygiene
     @hygiene
   end

   def hygiene=(new_hygiene)
     if new_hygiene > 10
       @hygiene = 10
     elsif new_hygiene < 0
       @hygiene = 0
     else
       @hygiene = new_hygiene
     end
   end
# end

   def happy?
     if @happiness > 7
       true
     else
       false
     end
   end

   def clean?
     if @hygiene > 7
       true
     else
       false
     end
   end

   def get_paid(salary)
     @bank_account += salary
     "all about the benjamins"
   end

   def take_bath
     self.hygiene += 4
     "♪ Rub-a-dub just relaxing in the tub ♫"
   end

   def work_out
     self.hygiene -= 3
     if @hygiene < 0
       @hygiene = 0
     end
     self.happiness += 2
     if @happiness > 10
       @happiness = 10
     end
     "♪ another one bites the dust ♫"
   end

   def call_friend(person)
     self.happiness += 3
    #  if self.happiness > 10
    #    self.happiness = 10
    #  end
     person.happiness += 3
    #  if person.happiness > 10
    #    person.happiness = 10
    #  end
     "Hi #{person.name}! It's #{self.name}. How are you?"
   end

   def start_conversation(person, topic)
     if topic == "politics"
       self.happiness-=2
       person.happiness-=2
       'blah blah partisan blah lobbyist'
     elsif topic == "weather"
       self.happiness+=1
       person.happiness+=1
       'blah blah sun blah rain'
     else
       'blah blah blah blah blah'
     end
   end
 end
end

# matt = Person.new("Matt")
# binding.pry
# puts matt
