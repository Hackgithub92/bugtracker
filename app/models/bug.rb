class Bug < ApplicationRecord
    
    # Make sure that bugs have a title and description upon creation.
    validates :title, presence: true
    validates :description, presence: true
    
    # Make enumerated types for priority, issue type, and status
    enum issue_type: [:issue, :enhancement, :feature]
    enum priority: [:low, :medium, :high]
    enum status: [:open, :closed, :monitor]
    
    belongs_to :user
    
    
end
