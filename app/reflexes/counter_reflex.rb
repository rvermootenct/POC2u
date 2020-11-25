class CounterReflex < StimulusReflex::Reflex
    def increment(step = 1)
    #   session[:count] = session[:count].to_i + step
    session[:count] = 3
    end
  end