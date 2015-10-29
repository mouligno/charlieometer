class FactsController < ApplicationController
  def index
    @facts = Fact.all.order(score: :desc)
    @fact = Fact.new
  end

  def create
    @fact = Fact.new(fact_params)

    if @fact.save
      flash[:notice] = 'Fact added'
    else
      flash[:alert] = 'An error occured'
    end

    redirect_to facts_path
  end

protected
  def set_score(fact)
    fact.score = fact.upvote.fdiv(fact.upvote + fact.downvote)
    fact.save
  end

private
  def fact_params
    params.require(:fact).permit(:content)
  end
end
