module Facts
  class UpvoteController < FactsController
    def create
      @fact = Fact.find(params[:fact_id])
      @fact.upvote += 1

      if @fact.save
        flash[:notice] = 'Vote pris en compte'
        set_score(@fact)
      else
        flash[:alert] = 'An error occured'
      end

      redirect_to facts_path
    end
  end
end
