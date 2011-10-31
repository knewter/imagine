require 'spec_helper'

describe Imagine::Album do
  it { should validate_presence_of(:name) }
  it { should have_many(:images) }
  if Imagine.orm == :mongoid
    context "with Mongoid" do
      it { should have_field(:name).of_type(String) }
      it { should be_timestamped_document }
    end
  end
end
