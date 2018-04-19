class List < ActiveRecord::Base
  has_many :tasks
  validates :name, :presence => true
  scope :most_tasks, -> {(
    select("lists.id, lists.name, count(tasks.id) as tasks_count")
    .joins(:tasks)
    .group("lists.id")
    .order("tasks_count DESC")
    .limit(10)
  )}
  scope :most_tasks_top_2, -> {(
    select("lists.id, lists.name, count(tasks.id) as tasks_count")
    .joins(:tasks)
    .group("lists.id")
    .order("tasks_count DESC")
    .limit(2)
    )}
end
