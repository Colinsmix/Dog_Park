require 'spec_helper'

describe Dog do
  it { should have_many :owners }
  it { should have_many :ownerships }

  it { should validate_presence_of :name }
end
