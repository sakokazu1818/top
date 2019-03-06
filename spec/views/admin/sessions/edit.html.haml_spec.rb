require 'rails_helper'

RSpec.describe 'admin/sessions/edit', type: :view do
  before(:each) do
    @admin_session = assign(:admin_session, Admin::Session.create!)
  end

  it 'renders the edit admin_session form' do
    render

    assert_select 'form[action=?][method=?]', admin_session_path(@admin_session), 'post' do
    end
  end
end
