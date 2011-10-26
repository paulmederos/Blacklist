require 'spec_helper'

describe Business do
  it { should have_many(:complaints) }
  it { should validate_presence_of(:name) }
end
