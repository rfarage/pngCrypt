class WelcomeController < ApplicationController
  def Page
    puts "Hello World"
  end
  
  def your_action
    your_function
  end

  private

    def your_function
      puts "hello world"
    end
end
