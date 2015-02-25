require 'rails_helper'

RSpec.describe Account, :type => :model do
  describe "validations" do
    it { should validate_presence_of :subdomain }
    it { should validate_uniqueness_of :subdomain }

    it { should allow_value("Dan").for(:subdomain) }
    it { should allow_value("test8char").for(:subdomain) }

    it { should_not allow_value("www").for(:subdomain) }
    it { should_not allow_value("WWW").for(:subdomain) }
    it { should_not allow_value(".testdomain").for(:subdomain) }
    it { should_not allow_value("testdomain/").for(:subdomain) }

    it "should validate case insensitive uniqueness" do
      create(:account, subdomain: "Testdomain")
      expect(build(:account, subdomain: "testdomain")).to_not be_valid
    end
  end

  describe "associations" do
    it "should have an owner"
  end
end
