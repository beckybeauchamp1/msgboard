class MessagesController < ApplicationController
	before_action :find_message, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		# I think this should work the same:
		# @messages = Message.all.order(:created_at).reverse
		@messages = Message.all.order("created_at DESC")
	end

	# I would remove this method if we are not going to use it:
	def show
	end


	def new
		# not sure why you are using .build here
		# I would do:
		# @message = current_user.messages.new
		@message = current_user.messages.build
	end

	def create
		# I prefer to write the following:
		# @message = Message.create(message_params.merge(user: current_user))
		@message = current_user.messages.build(message_params)
		if @message.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @message.update(message_params)
			redirect_to message_path
		else
			render 'edit'
		end
	end

	def destroy
		@message.destroy
		redirect_to root_path
	end

	private
	# nice job using strong params and defining a private method of find_message
	def message_params
		params.require(:message).permit(:title, :description)
	end

	def find_message
		@message = Message.find(params[:id])
	end

end
