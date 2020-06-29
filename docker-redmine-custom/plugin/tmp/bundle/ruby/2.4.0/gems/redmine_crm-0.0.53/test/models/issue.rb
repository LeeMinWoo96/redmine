require_relative 'project'
require_relative 'user'

class Issue < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  belongs_to :author, class_name: 'User'

  rcrm_acts_as_draftable
  rcrm_acts_as_taggable
  rcrm_acts_as_viewed

  scope :visible, lambda { where('1=1') }
end
