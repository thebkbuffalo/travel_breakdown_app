class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  before_action :set_event, only: [:create, :index, :show, :edit, :new]
  before_action :set_role, only: [:create, :index, :show, :edit, :new]
  # GET /expenses
  # GET /expenses.jsonexi
  def index
    @expenses = @event.expenses.where(approved: true)
  end

  # GET /expenses/new
  def new
    @expense = Expense.new
  end

  # GET /expenses/1/edit
  def edit
  end

  # POST /expenses
  # POST /expenses.json
  def create
    @expense = Expense.new(expense_params)
    @expense.role_id = @role.id
    respond_to do |format|
      if @expense.save
        format.html { redirect_to event_expenses_path(event_id: @expense.role.event_id), notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { render :new }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    if params[:approve]
      @expense.approved = "true"
      respond_to do |format|
        if @expense.save
          format.html { redirect_to event_expenses_path(event_id: @expense.role.event_id), notice: 'Expense was successfully updated.' }
          format.json { render :show, status: :ok, location: @expense }
        else
          format.html { render :edit }
          format.json { render json: @expense.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        if @expense.update(expense_params)
          format.html { redirect_to event_expenses_path(event_id: @expense.role.event_id), notice: 'Expense was successfully updated.' }
          format.json { render :show, status: :ok, location: @expense }
        else
          format.html { render :edit }
          format.json { render json: @expense.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy
    respond_to do |format|
      format.html { redirect_to event_expenses_path(event_id: @expense.role.event_id), notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    def set_user
      @user = User.find(session[:user_id])
    end

    def set_event
      @event = Event.find(params[:event_id])
    end

    def set_role
      @role = Role.where("event_id = ? AND user_id = ?", @event.id, @user.id).first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_params
      params.require(:expense).permit(:item, :amount, :description, :start_date, :end_date, :calculation_type)
    end

end
