class Task < ActiveRecord::Base
  belongs_to :list
  validates :description, :presence => true
  def self.not_done
    where(done: false)
  end
  scope(:is_done, -> {
    where({:done => true})
  })
end
