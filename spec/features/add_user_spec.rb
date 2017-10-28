require 'rails_helper'

RSpec.feature "Add new user" do
  scenario "let user to add new user" do

    user = FactoryGirl.create( :user )

    visit user_path( user )

    expect( page ).to have_content( "Juan" )
    expect( page ).to have_content( 20 )
  end
  scenario "let user to edit an user" do
    user = FactoryGirl.create( :user )
    visit user_path( user )
    click_on("Edit")
    fill_in "Name", with: "Maria"
    fill_in "Age", with: 45
    click_on("Update User")
    expect( page ).to have_content( "User was successfully updated." )
    expect( page ).to have_content( "Maria" )
    expect( page ).to have_content( 45 )
  end
end
