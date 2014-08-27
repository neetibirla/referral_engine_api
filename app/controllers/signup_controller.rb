class SignupController < ApplicationController
  
  def register
    # user = User.new(params.require(:signup).permit(:first_name, :last_name, :referrer, :email))
    # p params[:code_used]
    # user.referrer = User.find_by_referral_code(params[:code_used])[:id]
    # user.generate_code
    # user.save!
    p 'Now i entered here !!'
    p 'Done'
    render text: 'Done'
  end
end
