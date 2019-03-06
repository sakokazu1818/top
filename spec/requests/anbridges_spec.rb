require 'rails_helper'

RSpec.describe 'Anbridges', type: :request do
  describe 'GET /anbridges' do
    it 'works! (now write some real specs)' do
      get anbridges_path
      expect(response).to have_http_status(200)
    end
  end
end
