require 'spec_helper'

describe Product do

	context "Mass-assignment" do
  	it { should allow_mass_assignment_of(:name)}
  	it { should allow_mass_assignment_of(:price)}
  	it { should allow_mass_assignment_of(:description)}
  	it { should allow_mass_assignment_of(:category_id)}
 	end
	
	context "Validates the Relationships" do
	  it { should belong_to(:category) }
	end

	context "Validates the Attributes" do
	  it { should validate_presence_of(:name) } 
	  it { should validate_uniqueness_of(:name) }
	end

end