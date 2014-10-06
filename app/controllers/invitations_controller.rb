class InvitationsController < ApplicationController

  def new
    @new_email = params[:new_email]
    @event = Event.find(params[:event_id])
    @invitation = Invitation.new
    @user = User.find(params[:owner])
  end

  def create
    @invitation = Invitation.new(params[:invitation])
    if @invitation.deliver
      flash[:success] = "#{params[:invitation][:email]} has been invited!"
    else
      flash[:error] = "We were unable to invite your friend using the email address provided: #{params[:invitation][:email]}"
    end
    redirect_to event_path(params[:event])
  end

end
