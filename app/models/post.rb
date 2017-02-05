class Post < ActiveRecord::Base
  enum status: { submitted: 0, approved: 1, rejected: 2 }
  belongs_to :user
  validates_presence_of :rationale, :date
end

#p.submitted!
#p.approved!
#p.rejected!
