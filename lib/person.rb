#commented code is less efficient, kept for review
require 'pry'

class Person
  attr_reader :name
  attr_accessor :bank_account
  attr_reader :happiness
  attr_reader :hygiene

  def initialize(name = nil, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene

    def happiness=(new_happiness)
      if new_happiness > 10
       @happiness = 10
     elsif new_happiness < 0
       @happiness = 0
     else
       @happiness = new_happiness
     end
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

   def happy?
     @happiness > 7 ? true : false
     #ternary operator
   end

   def clean?
     @hygiene > 7 ? true : false
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
     @hygiene = 0 if @hygiene < 0

     self.happiness += 2
     @happiness = 10 if @happiness > 10

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
      case topic
        when "politics"
          self.happiness-=2
          person.happiness-=2
          'blah blah partisan blah lobbyist'
        when "weather"
          self.happiness+=1
          person.happiness+=1
          'blah blah sun blah rain'
        else
          'blah blah blah blah blah'
      end
   end
   # METHODS REPLACED WITH MACROS
   # def bank_account
   #   @bank_account #attr_accessor :bank_account
   # end
   #
   # def bank_account=(new_funds)
   #   @bank_account = new_funds
   # end
   # def happiness
   #   @happiness
   # end
  #  def hygiene
  #    @hygiene
  #  end
 end
end
