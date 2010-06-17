class NamesController < ApplicationController
  def index
    @names = Name.all
  end
  
  def show
    @name = Name.find(params[:id])
  end
  
  def new
    @name = Name.new
  end
  
  def create
    @name = Name.new(params[:name])
    if @name.save
      flash[:notice] = "Successfully created name."
      redirect_to @name
    else
      render :action => 'new'
    end
  end
  
  def edit
    @name = Name.find(params[:id])
  end
  
  def update
    @name = Name.find(params[:id])
    if @name.update_attributes(params[:name])
      flash[:notice] = "Successfully updated name."
      redirect_to @name
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @name = Name.find(params[:id])
    @name.destroy
    flash[:notice] = "Successfully destroyed name."
    redirect_to names_url
  end
end
