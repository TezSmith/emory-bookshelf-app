require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'validation test' do

    before(:all) do
      @author = create(:author)
    end

    it 'makes sure that an author saves succesfully' do
      expect(@author).to be_valid
    end
  end
end
