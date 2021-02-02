class WordsController < ApplicationController
    def index
        words = Word.where(user_id: @user.id)
        render json: words
    end

    def create
        word = Word.find_or_create_by(word_params)
        render json: word
    end

    private
    def word_params
        params.permit(:api_id, :word, :definition, :user_id)
    end

end
