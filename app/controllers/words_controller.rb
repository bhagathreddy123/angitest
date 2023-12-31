class WordsController < ApplicationController

  before_action :authenticate_user!, except: [:index]
  before_action :set_word, except: [:index, :new, :create]

  def index
    @words = Word.page(params[:page])
  end

  def new
    @word = current_user.words.new
  end

  def create
    @word = Word.new(word_params)
    @word.user = current_user
    @word.translations.each do |translation|
      translation.user = current_user
    end
    if @word.save
      redirect_to words_path
    else
       render :new 
    end
  end

  def edit
    authorize @word
  end

  def update
    authorize @word
    if @word.update(word_params)
      @word.user_id = current_user.id
      redirect_to words_path
    else
      render :edit 
    end
  end

  def show
    @random_word = Words::RandomWord.new.call
  end

  def destroy
    authorize @word
    @word.destroy
      redirect_to words_path
  end

  private

  def set_word
    @word = Word.find(params[:id])
  end

  def word_params
    params.require(:word).permit!
  end

end
