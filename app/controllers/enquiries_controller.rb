class EnquiriesController < ApplicationController
  def index
    @enquiry = Enquiry.all
  end

  def new
    @enquiry = Enquiry.new
  end

  def create
    # all feilds in permit must be same as the table attribute names
    @enquiry = Enquiry.new(enquiry_params)
    if @enquiry.save
      render 'index'
    else
      flash[:alert] = @enquiry.errors.full_messages.join()
      render 'new'
    end
  end

  private

  def enquiry_params
    params.require(:enquiry).permit(:name, :email, :phone_numbers, :enquiry_messages)
  end
end
