class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    respond_to do |format|
      format.html
    end
  end
  def show
    @question = Question.find(params[:id])
  end
  def view_user_qanda
    @user = User.find("#{current_user.id}")
    @questions = @user.questions
    respond_to do |format|
      format.html
    end
  end
    
  def new
    @question = Question.new
    @user = User.find("#{current_user.id}")
    #@user.each do |u|
      logger.info("@@@@U: #{@user.email}")
    #end
    
  end
  
  def create
    @question = Question.new(question_params)
    @user = User.find("#{current_user.id}")
    @question.users << @user
    respond_to do |format|
      if @question.save
        format.html  { redirect_to(@question, :notice => 'Question was successfully created.') }
        format.json  { render :json => @post,
                  :status => :created, :location => @post }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @post.errors,
                      :status => :unprocessable_entity }
      end
    end
  end
  def edit
     logger.info("@@@@@Edit!")
     @question = Question.find(params[:id])
    end
    
    def update
      @question = Question.find(params[:id])
      respond_to do |format|
        if @question.update_attributes(question_params)
          format.html  { redirect_to(@question,
                        :notice => 'Update was Successful.') }
          format.json  { head :no_content }
        else
          format.html  { render :action => "edit" }
          format.json  { render :json => @question.errors,
                        :status => :unprocessable_entity }
        end
      end
    end   
  def destroy
    logger.info("@@@@@DESTROY ID: #{params[:id]}")
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to view_user_qanda_path, notice: 'Question was successfully destroyed.'
  end
  
  private
  def question_params
    params.require(:question).permit(:question, :answer)
  end
    
  
end
