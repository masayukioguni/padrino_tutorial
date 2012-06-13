Admin.controllers :posts do

  get :index do
    @posts = Post.all
    @accounts = Account.all
    render 'posts/index'
  end

  get :new do
    @post = Post.new
    @accounts = Account.all
    render 'posts/new'
  end

  post :create do
    p params[:post]
    @post = Post.new(params[:post])
    p params[:post]
    @accounts = Account.all

    if @post.save
      flash[:notice] = 'Post was successfully created.'
      redirect url(:posts, :edit, :id => @post.id)
    else
      render 'posts/new'
    end
  end

  get :edit, :with => :id do
    @post = Post.find(params[:id])
    @select_account_id = @post.account_id
    @accounts = Account.all
    render 'posts/edit'
  end

  put :update, :with => :id do
    @post = Post.find(params[:id])
    p params[:post]
    if @post.update_attributes(params[:post])
      flash[:notice] = 'Post was successfully updated.'
      redirect url(:posts, :edit, :id => @post.id)
    else
      render 'posts/edit'
    end
  end

  delete :destroy, :with => :id do
    post = Post.find(params[:id])
    if post.destroy
      flash[:notice] = 'Post was successfully destroyed.'
    else
      flash[:error] = 'Unable to destroy Post!'
    end
    redirect url(:posts, :index)
  end
end
