require 'rails_helper'

RSpec.describe "anbridges/show", type: :view do
  before(:each) do
    @anbridge = assign(:anbridge, Anbridge.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
