require 'spec_helper'

describe Ownership do

  it { should belong_to :dog }
  it { should belong_to :owner }
  
  it { should validate_presence_of :owner_id }
  it { should validate_presence_of :dog_id }
end
