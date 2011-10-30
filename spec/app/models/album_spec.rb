require 'spec_helper'

describe Imagine::Album do
  it { should validate_presence_of(:name) }
end
