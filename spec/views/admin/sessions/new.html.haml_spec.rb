require 'rails_helper'

RSpec.describe 'admin/sessions/new', type: :view do
  before(:each) do
    assign(:admin_session, Admin::Session.new)
  end

  it 'renders new admin_session form' do
    render

    assert_select 'form[action=?][method=?]', admin_sessions_path, 'post' do
    end
  end
end
