require 'rails_helper'

RSpec.describe "admin/sessions/index", type: :view do
  before(:each) do
    assign(:admin_sessions, [
      Admin::Session.create!(),
      Admin::Session.create!()
    ])
  end

  it "renders a list of admin/sessions" do
    render
  end
end
