class BanksController < ApplicationController
    def index
        @banks = Bank.all
    end 

    def new
        @bank = Bank.new

    end 
    
    def edit 
        # Dynamic url will pass in params of id key value. 

        @bank = Bank.find_by(id: params[:id])
        
    end

    def update
        # Once the edit form is subbmited, it will come to update '/patch' request. 
        # Will be passing in a params from the form.
        bank = Bank.find_by(id: params[:id])
        bank_params = params.require(:bank).permit(:bank_name, :bank_location, :staff_count, :year_founded)
        bank.update(bank_params)
        if bank.valid?
            flash[:succeed] = "Updated successfully!"
            redirect_to bank_path(bank.id)
        end
    end

    def destroy
        # Once delete button is pressed, will come to this request with id.

        bank = Bank.find_by(id: params[:id])
        bank.destroy
        # Render a form to show deleted successfully.

        render 'delete_msg.erb'
    end


    def show
        # When redirected by update method, flash will be passed in.
        @succeed = flash[:succeed]
        @bank = Bank.find_by(id: params[:id])
    end

    def create

        bank_params = params.require(:bank).permit(:bank_name, :bank_location, :staff_count, :year_founded)
        bank = Bank.create(bank_params)

        redirect_to bank_path(bank.id)

    end

end
