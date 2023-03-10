class UsersController < ApplicationController

    def index
        @user = User.all
        
    #    @data1 = 'Hello world! Im the best'
    # @data2 = "data2 here Im better"
    # render :json => {
    #   message: {
    #     data1: @data1,
    #     data2: @data2 
    #   }
    # }
end

      def display
    @data1 = 'Hello world! Im the best'
    @data2 = "data2 here Im better"
    render :json => {
      message: {
        data1: @data1,
        data2: @data2 
      }
    }

    end

    def create
        @user = User.new(user_params)

        if @user.save
            flash[:notice] = "Welcome #{@user.name} you have successfully signed up"
            redirect_to users_path
        else
            render :new
        end
    end

    def show
    end

    def new
        @user = User.new
    end

    def edit
    end

    def update
        if @user.update(user_params)
            flash[:notice] = "Your account information was successsfully updated"
            redirect_to @user
        else
            render 'edit'
        end
    end

    def destroy
        @user = User.find_by(email: current_user.email)
        @user.destroy
        flash[:notice] = "User id and all the associated articles have been destroyed"
    end

    private

    def user_params
        params.require(:user).permit(:firstname, :lastname, :email, :phone )
    end

end
