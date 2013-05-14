require 'spec_helper'

describe Category do
  
	context "Should be Mass-assignment" do
  	it { should allow_mass_assignment_of(:name)}
  	it { should allow_mass_assignment_of(:description)}
	end
  
	context "Sholud be validates relationship" do
		  it {should have_many(:products)}
	end

	context "Sholud be validates required fileds" do
		 it { should validate_presence_of(:name) } 
	end
		
end
