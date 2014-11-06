class CreateSurveyUsers < ActiveRecord::Migration
  def change
  	create_table :surveyusers do |t|
  		t.belongs_to :user 
  		t.belongs_to :survey 
   	end
  end
end
