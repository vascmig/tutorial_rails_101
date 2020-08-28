require 'rails_helper'
require 'spec_helper'


describe "Welcome page" do
  it "should have the content 'Bem vindo'" do
    visit '/'
    expect(page).to have_content('Bem vindo')
  end
end

