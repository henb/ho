require 'spec_helper'

describe CommentsController do
  describe 'routing' do
    it 'routes to #create' do
      post('/hotels/1/comments').should be_routable
    end

    it 'routes to #destroy' do
      delete('/hotels/1/comments/1').should be_routable
    end

    describe 'should_not' do
      it 'routes to #index' do
        get('/hotels/1/comments').should_not be_routable
      end

      it 'routes to #new' do
        get('/hotels/1/comments/new').should_not be_routable
      end

      it 'routes to #show' do
        get('/hotels/1/comments/1').should_not be_routable
      end

      it 'routes to #edit' do
        get('/hotels/1/comments/1/edit').should_not be_routable
      end

      it 'routes to #update' do
        put('/hotels/1/comments/1').should_not be_routable
      end
    end
  end
end
