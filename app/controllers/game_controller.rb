class GameController < ApplicationController
  def homepage 
    render({ :template => "my_templates/home"})
  end 

  def roll_dice
    @num_die = params.fetch("zebra").to_i
    @sides = params.fetch("sides").to_i
  
    @rolls = []
  
    @num_die.times do
      die = rand(1..@sides)
  
      @rolls.push(die)
    end

    render({ :template => "my_templates/roll_dice"})
  end
end 
