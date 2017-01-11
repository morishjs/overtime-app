class Post < ActiveRecord::Base
  validates_presence_of :rationale, :date
end
