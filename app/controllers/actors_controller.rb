class ActorsController < ApplicationController
  def index
    render json: Actor.all
  end

  def show
    render json: actor
  end

  def update
    actor.update(actor_params)
    render json: actor
  end

  def create
    actor = Actor.create(actor_params)
    render json: actor
  end

  def destroy
    actor.destroy!
    render :success
  end

  def actor
    @actor ||= Actor.find(actor_find_params[:id])
  end

  def actor_find_params
    params.permit(:id)
  end

  def actor_params
    params.require(:actor).permit(:first_name, :last_name)
  end
end
