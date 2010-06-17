require 'test_helper'

class NamesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Name.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Name.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Name.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to name_url(assigns(:name))
  end
  
  def test_edit
    get :edit, :id => Name.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Name.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Name.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Name.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Name.first
    assert_redirected_to name_url(assigns(:name))
  end
  
  def test_destroy
    name = Name.first
    delete :destroy, :id => name
    assert_redirected_to names_url
    assert !Name.exists?(name.id)
  end
end
