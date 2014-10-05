class InvitationsController < ApplicationController

  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(params[:invitation])
    if @invitation.deliver
      flash[:notice] = "#{params[:invitation][:name]} has been invited!"
    else
      flash[:notice] = "We were unable to invite your friend using the email address provided: #{params[:invitation][:email]}"
    end
    redirect_to event_path(id: params[:event_id])
  end

end
