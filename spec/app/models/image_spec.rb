require 'spec_helper'

describe Imagine::Image do
  it { should validate_presence_of(:file) }
end
