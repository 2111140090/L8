class UsersController < ApplicationController
 def new
 end

#セッションを取得/ログイン
 def create
  #user.rbに書いたクラスメソッドcheckを使う。フォームからの値をparamsメソッドで受け取る。
  @user = User.check(params[:session][:email], params[:session][:password])

  #@userがtrueなら、@userのnameをハッシュsessionにキー[:name]でセットする。
  if @user
    session[:name] = @user.name
    #メッセージをハッシュflashにキー[:success]でセットする。
    flash[:success] = "ログインに成功しました。"
    #rootのページに遷移する。
    redirect_to root_path
  else
    flash.now[:error] = "メールアドレスとパスワードが一致しません。"
    render "new"
  end
 end

#セッションを破棄/ログアウト
 def destroy
  #session[:name]に入れた値をdeleteメソッドで削除する。
  session.delete(:name)
  redirect_to new_sessions_path
  #個別ルーティングの場合
  #redirect_to signin_path
 end
end
