require 'test_helper'

class BugTest < ActiveSupport::TestCase
  
  def setup
    @bug = Bug.create( title: "a new bug", 
            description: "this is the bug description text for our new bug.")
  end
  
  test "bug must be valid" do
    assert @bug.valid?
  end
  
  test "title must be present" do
    @bug.title = ""
    assert_not @bug.valid?
  end
  
  test "description must be valid" do
    @bug.description = ""
    assert_not @bug.valid?
  end
  
  test "status must be valid" do
    invalid_statuses = [-10, -1, 3, 10]
    invalid_statuses.each do |is|
      
      begin
        @bug.status = is
        assert false, "#{is} should be invalid}"
        
      rescue
        assert true
      end
    end
  end
  
  test "issue_type must be valid" do
    invalid_issue_types = [-10, -1, 3, 10]
    invalid_issue_types.each do |iit|
      
      begin
        @bug.issue_type = iit
        assert false, "#{iit} should be invalid"
        
      rescue
        assert true
      end
    end
  end
  
  test "priority must be valid" do
    invalid_issue_types = [-10, -1, 3, 10]
    invalid_issue_types.each do |ip|
      
      begin
        @bug.priority = ip
        assert false, "#{ip} should be invalid"
        
      rescue
        assert true
      end
    end
  end
  
  test "default status must be open" do
    assert_equal @bug.status, "open"
  end
  
  test "default priority must be medium" do
    assert_equal @bug.priority, "medium"
  end
  
  test "default issue_type must be feature" do
    assert_equal @bug.issue_type, "feature"
  end
      
      
end
    
