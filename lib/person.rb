# your code goes here
require 'pry'

 class Person 
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def hygiene=(new_hygiene)
        if(new_hygiene < 0)
            @hygiene = 0
        elsif(new_hygiene > 10)
            @hygiene = 10 
        else 
            @hygiene = new_hygiene
        end
    end


    def happiness=(new_happiness)
        if(new_happiness < 0)
            @happiness = 0
        elsif(new_happiness > 10)
            @happiness = 10 
        else 
            @happiness = new_happiness
        end
    end

    def clean? 
        @hygiene > 7
    end
    
    def happy?
        @happiness > 7
    end

    def get_paid(salary_amount)
        @bank_account += salary_amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        self.hygiene -= 3
        self.happiness +=2
        "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend)
            self.happiness += 3
            friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -=2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end
 end



 