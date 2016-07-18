require "rails_helper"

RSpec.describe Category, type: :model do
  it { should belong_to(:user) }

  it { should have_many(:posts) }

  it { should have_many(:posts).dependent(:destroy) }
end