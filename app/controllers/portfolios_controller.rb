class PortfoliosController < ApplicationController
    def index
      @portfolio_item = Portfolio.all  
    end

    def new
     @portfolio_item = Portfolio.new 
    end

    def create
    
    end

    def create
    @test = Test.new(test_params)

    respond_to do |format|
      if @test.save
        format.html { redirect_to @test, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @test }
      else
        format.html { render :new }
        format.json { render json: @test.errors, status: :unprocessable_entity }
        end
      end
     end


end
