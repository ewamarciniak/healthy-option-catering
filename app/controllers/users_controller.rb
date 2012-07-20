# @reference: Ruby,S. & Thomas,D & Heinemeier Hanson, D. (2010), "Agile Web Development with Rails", USA
# @reference: Wesley Gorman, "Laptop Shop Tutorial"

class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
    @users = User.order(:name)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml

# @authors: Ewa Marciniak x11114533 and Malgorzata Holubowicz x12101362
# start of the code
  def show
    if user = current_user
      if user.admin
        @user = User.find(params[:id])
      else
        @user = User.find(current_user.id)
      end
    end
# end of the code
    #@orders = @user.orders

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to(users_url, :notice => "User #{@user.name} was successfully created.") }
        format.xml { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])


# @authors: Ewa Marciniak x11114533 and Malgorzata Holubowicz x12101362
# start of the code
    respond_to do |format|
      if @user.update_attributes(params[:user])
        user = current_user
        if  user.admin = true
          format.html { redirect_to(profile_url, :notice => "User #{@user.name} was successfully updated.") }
        else
          format.html { redirect_to(users_url, :notice => "Your user details were successfully updated.") }
        end
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
# end of the code


  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    begin
      @user.destroy
      flash[:notice] = "User #{@user.name} deleted"
    rescue Exception => e
      flash[:notice] = e.message
    end

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end

  def profile
    @order = current_user.orders.last
  end

  def history
    @orders = current_user.orders.all
  end
end
