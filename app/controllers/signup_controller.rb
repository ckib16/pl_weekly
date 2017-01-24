class SignupController < ApplicationController
  before_filter :require_logged_in_user, :only => :invite

  def index
    # Added 1 line below for direct signup, no invites required
    redirect_to action: :invited, invitation_code: 'open' and return
    if @user
      flash[:error] = "You are already signed up."
      return redirect_to "/"
    end

    @title = "Signup"
  end

  def invite
    @title = "Pass Along an Invitation"
  end

  def invited
    if @user
      flash[:error] = "You are already signed up."
      return redirect_to "/"
    end

    # Commented out for direct signup, no invites required
    # if !(@invitation = Invitation.where(:code => params[:invitation_code].to_s).first)
    #   flash[:error] = "Invalid or expired invitation"
    #   return redirect_to "/signup"
    # end
    #
    @title = "Signup"

    @new_user = User.new
    # Commented out for direct signup, no invites required
    # @new_user.email = @invitation.email

    render :action => "invited"
  end

  def signup
    # Commented out for direct signup, no invites required
    # if !(@invitation = Invitation.where(:code => params[:invitation_code].to_s).first)
    #   flash[:error] = "Invalid or expired invitation."
    #   return redirect_to "/signup"
    # end
    #
    @title = "Signup"

    @new_user = User.new(user_params)
    # Commented out for direct signup, no invites required
    # @new_user.invited_by_user_id = @invitation.user_id

    if @new_user.save
      # Commented out for direct signup, no invites required
      # @invitation.destroy
      session[:u] = @new_user.session_token
      flash[:success] = "Welcome to #{Rails.application.name}, " <<
        "#{@new_user.username}!"

      Countinual.count!("#{Rails.application.shortname}.users.created", "+1")
      Countinual.count!("#{Rails.application.shortname}.users.total",
        User.count)

      return redirect_to "/signup/invite"
    else
      render :action => "invited"
    end
  end

private
  def user_params
    params.require(:user).permit(
      :username, :email, :password, :password_confirmation, :about,
    )
  end
end
