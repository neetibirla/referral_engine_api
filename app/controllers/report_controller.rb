class ReportController < ApplicationController
  
  def referred_list
    code = params[:code]
    user_id = params[:user_id]
    
    return render json: {status: 'FAILURE', message: 'Both vaues should not be null'} if code.nil? && user_id.nil?
    
    if code.present?
      referrer = User.find_by_referral_code(code)
      user_id = referrer.id
    end
    referred = User.select(:id, :email, :first_name, :last_name).where(referrer: user_id)
    render json: referred
  end
end
