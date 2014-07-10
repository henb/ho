require 'spec_helper'

describe 'devise_for' do
  describe 'routing' do

    describe 'sessions' do
      it 'routes to #new' do
        get('/users/sign_in').should be_routable
      end

      it 'routes to #create' do
        post('/users/sign_in').should be_routable
      end

      it 'routes to #destroy' do
        delete('/users/sign_out').should be_routable
      end
    end

    describe 'passwords' do

    end

    describe 'registrations' do

      it 'routes to #cancel' do
        get('/users/cancel').should be_routable
      end

      it 'routes to #new' do
        get('/users/sign_up').should be_routable
      end

      it 'routes to #create' do
        post('/users').should be_routable
      end

      it 'routes to #destroy' do
        delete('/users').should be_routable
      end

      it 'routes to #edit' do
        get('/users/edit').should be_routable
      end

      it 'routes to #update' do
        put('/users').should be_routable
      end
    end
  end
end
