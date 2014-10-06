class InvitationsController < ApplicationController

  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(params[:invitation])
    if @invitation.deliver
      flash[:success] = "#{params[:invitation][:email]} has been invited!"
    else
      flash[:error] = "We were unable to invite your friend using the email address provided: #{params[:invitation][:email]}"
    end
    redirect_to event_path(id: params[:event_id])
  end

end
