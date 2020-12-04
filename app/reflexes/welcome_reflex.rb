class WelcomeReflex < StimulusReflex::Reflex
    def greetings
        @welcome_message = 'Welcome to stimulas reflex working'
    end

    def increment
         @count = element.dataset[:count].to_i + element.dataset[:step].to_i
    end

    def say_hello
        @value = element.attributes[:value]
        @name = "Hello #{@value}!"
    end

    def from_stimulus(step)
        session[:count] = session[:count].to_i + step.to_i
        @increment = session[:count]
    end
end