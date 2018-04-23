require 'rails_helper'

describe Task do
  it 'should show the first task is to get sewing needles' do
    list = FactoryBot.create(:list)
    task = FactoryBot.create(:task, list_id: list.id)
    task.description.should eq 'get sewing needles'
  end

  it { should validate_presence_of :description}
  it { should belong_to :list}
end
