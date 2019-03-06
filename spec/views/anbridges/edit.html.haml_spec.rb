require 'rails_helper'

RSpec.describe 'anbridges/edit', type: :view do
  before(:each) do
    @anbridge = assign(:anbridge, Anbridge.create!)
  end

  it 'renders the edit anbridge form' do
    render

    assert_select 'form[action=?][method=?]', anbridge_path(@anbridge), 'post' do
    end
  end
end
