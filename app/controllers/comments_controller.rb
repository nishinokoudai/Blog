class CommentsController < ApplicationController
    
    
    # createメソッド
    def create
        # idで指定したPostオブジェクトをデータベースから取得
        @post = Post.find(params[:post_id])
        
        # フォームに入力されたデータをidで指定したPostオブジェクトに関連するコメントオブジェクトを作成
        @comment = Post.find(params[:post_id]).comments.new(params[:comment])
        # もしデータベースへの保存が成功したら
        if @comment.save
            # 指定したポスト表示ページにリダイレクト
            redirect_to post_path(@post)
            # もしデータベースへの保存が成功しなかったら
            else
            # メソッド処理後にクライアントに返すhtmlのテンプレートをshowに指定
            render :template => "posts/show"
        end
    end
end
