class SignupController < ApplicationController
  
  def register
    user = User.new(params.require(:signup).permit(:first_name, :last_name, :referrer, :email))
    user.referrer = User.find_by_referral_code(params[:code_used])[:id]
    user.generate_code
    user.save!
    render json: {id: user.id, code: user.referral_code}
  end
end
