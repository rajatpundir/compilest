class AdminUsersController < ApplicationController

	before_action :confirm_logged_in, :except => [:new, :create]
	before_action :is_superuser, :except => [:new, :create]

	def index
		@admin_users = AdminUser.sorted
	end

	def show
		@admin_user = AdminUser.find(params[:id])
	end

	def new
		@admin_user = AdminUser.new
	end

	def create
		@admin_user = AdminUser.new(admin_user_params)
		if @admin_user.save
			flash[:success] = 'User created successfully.'
			redirect_to(admin_users_path)
		else
			render('new')
		end
	end

	def edit
		@admin_user = AdminUser.find(params[:id])
	end

	def update
		@admin_user = AdminUser.find(params[:id])
		if @admin_user.update_attributes(admin_user_params)
			flash[:success] = 'User updated successfully.'
			redirect_to(admin_users_path)
		else
			render('edit')
		end
	end

	def delete
		@admin_user = AdminUser.find(params[:id])
		if @admin_user.superuser
			flash[:success] = 'Site Administrator cannot be deleted.'
			redirect_to(admin_users_path)
		end
	end

	def destroy
		@admin_user = AdminUser.find(params[:id])
		@admin_user.destroy
		flash[:success] = 'User destroyed successfully.'
		redirect_to(admin_users_path)
	end

	def reset
		users = AdminUser.all
		users.each do |user|
			user.update_attribute(:score, -1)
			user.update_attribute(:answered, "")
		end
		redirect_to(admin_users_path)
	end

	private

	def admin_user_params
		params.require(:admin_user).permit(
			:year,
			:first_name,
			:last_name,
			:section,
			:roll_number,
			:email,
			:user_mobile,
			:father,
			:father_occupation,
			:father_mobile,
			:mother,
			:mother_occupation,
			:mother_mobile,
			:interests,
			:goals,
			:skills,
			:strengths,
			:weaknesses,
			:username,
			:password,
			:answered,
			:score
			)
	end


end
