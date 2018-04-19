class Task < ActiveRecord::Base
  belongs_to :list
  validates :description, :presence => true
  def self.not_done
    where(done: false)
  end
  scope(:is_done, -> do
    where({:done => true})
  end)
  scope :today, -> {
    where("created_at >=?", Time.now.beginning_of_day)
  }
  scope :five_most_recent, -> {
    order(:created_at => :desc).limit(5)
  }
end
