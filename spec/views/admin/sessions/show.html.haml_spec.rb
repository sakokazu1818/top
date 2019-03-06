require 'rails_helper'

RSpec.describe 'admin/sessions/show', type: :view do
  before(:each) do
    @admin_session = assign(:admin_session, Admin::Session.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
