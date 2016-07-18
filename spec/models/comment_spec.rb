require "rails_helper"

RSpec.describe Comment, type: :model do
  it { should belong_to(:post) }
  it { should validate_presence_of(:name) }
  it { should validate_length_of(:name)}
  it { should validate_presence_of(:body) }
  it { should validate_presence_of(:post_id) }
end