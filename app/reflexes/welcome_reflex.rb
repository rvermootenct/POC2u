class WelcomeReflex < StimulusReflex::Reflex
    def greetings
        @welcome_message = 'Stimulus Reflex click action working!'
    end

    def increment
        # increment example
        # https://docs.stimulusreflex.com/quickstart#trigger-reflex-actions-with-data-reflex-attributes
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