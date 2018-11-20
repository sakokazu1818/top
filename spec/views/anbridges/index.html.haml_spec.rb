require 'rails_helper'

RSpec.describe "anbridges/index", type: :view do
  before(:each) do
    assign(:anbridges, [
      Anbridge.create!(),
      Anbridge.create!()
    ])
  end

  it "renders a list of anbridges" do
    render
  end
end
