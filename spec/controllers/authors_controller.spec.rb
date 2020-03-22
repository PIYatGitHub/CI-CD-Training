require 'rails_helper'

describe AuthorsController do
    describe 'GET #index' do
        it 'populates an array of authors' do
            get :index
            expect (assigns(:authors).count). to eq(Author.count)
        end
    end
end

