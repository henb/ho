require 'spec_helper'

describe RaterController do
  describe 'routing' do
    it 'routes to #create' do
      post('/rate').should be_routable
    end
  end
end
