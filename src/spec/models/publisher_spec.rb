require 'rails_helper'

RSpec.describe Publisher, type: :model do
  context 'validation test' do

    before(:all) do
      @book = create(:book)
      @publisher = create(:publisher)
    end

    it 'makes sure that a publisher saves succesfully' do
      expect(@publisher).to be_valid
    end
  end
end
