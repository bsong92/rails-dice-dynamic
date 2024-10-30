class ZebraController < ApplicationController
  def rules
    # This action will render the home page
    render({ :template => "dice_templates/rules" })
  end

  def twobysix
    roll_dice(2, 6)
    render({ :template => "dice_templates/twobysix" })
  end

  def twobyten
    roll_dice(2, 10)
    render({ :template => "dice_templates/twobyten" })
  end

  def onebytwenty
    roll_dice(1, 20)
    render({ :template => "dice_templates/onebytwenty" })
  end

  def fivebyfour
    roll_dice(5, 4)
    render({ :template => "dice_templates/fivebyfour" })
  end

  def roll_dice
    @num_dice = params[:num_dice].to_i
    @sides = params[:sides].to_i
    @rolls = []

    @num_dice.times do
      @rolls.push(rand(1..@sides))
    end

    render({ :template => "dice_templates/roll_result" })
  end

  # def roll_dice(num_dice, sides)
  #   @num_dice = num_dice
  #   @sides = sides
  #   @rolls = []

  #   @num_dice.times do
  #     die = rand(1..@sides)
  #     @rolls.push(die)
  # end
end
