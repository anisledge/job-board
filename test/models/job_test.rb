require 'test_helper'

class JobTest < ActiveSupport::TestCase
	def setup
		@job = Job.create(title: "Test", description: "-Test -Test -Test", requirements: "Test", location: "Test, NY", employer: "Test")
	end
    
    test "should be valid" do
      assert @job.valid?
    end	

    test "title should be present" do
      @job.title = nil
      assert_not @job.valid?
    end

    test "description should be present" do
      @job.description = "      "
      assert_not @job.valid?
    end

    test "requirements should be present" do
      @job.requirements = nil
      assert_not @job.valid?
    end

    test "location should be present" do
      @job.location = nil
      assert_not @job.valid?
    end

    test "employer should be present" do
      @job.employer = "         "
      assert_not @job.valid?
    end


end