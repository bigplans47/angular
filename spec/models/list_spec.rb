require 'rails_helper'

describe List do
  it 'is private by default' do
    list = FactoryBot.create(:list)
    list.name.should eq 'Knit the sock monkey'
  end
  it 'will take a different name' do
    list = FactoryBot.create(:list, :name => 'herd the cats')
    list.name.should eq 'herd the cats'
  end
  it { should validate_presence_of :name }
  it { should have_many :tasks }
end
