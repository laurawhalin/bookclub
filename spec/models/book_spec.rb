require "rails_helper"

describe Book, type: :model do
  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:author) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:genre) }
    it { should validate_presence_of(:average_rating) }
    it { should validate_presence_of(:status) }
  end
end
