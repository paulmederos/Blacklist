require 'spec_helper'

describe Complaint do
  it { should belong_to(:business) }
  it { should validate_presence_of(:story) }
end
