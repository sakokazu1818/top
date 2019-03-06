require 'rails_helper'

RSpec.describe AnbridgesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/anbridges').to route_to('anbridges#index')
    end

    it 'routes to #new' do
      expect(get: '/anbridges/new').to route_to('anbridges#new')
    end

    it 'routes to #show' do
      expect(get: '/anbridges/1').to route_to('anbridges#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/anbridges/1/edit').to route_to('anbridges#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/anbridges').to route_to('anbridges#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/anbridges/1').to route_to('anbridges#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/anbridges/1').to route_to('anbridges#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/anbridges/1').to route_to('anbridges#destroy', id: '1')
    end
  end
end
