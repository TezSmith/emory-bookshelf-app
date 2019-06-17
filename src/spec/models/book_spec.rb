require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'validation test' do

    before(:all) do
      @book = create(:book)
    end

    it 'makes sure that a book saves succesfully' do
      expect(@book).to be_valid
    end
  end
end
