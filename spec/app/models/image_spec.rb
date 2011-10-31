require 'spec_helper'

describe Imagine::Image do
  it { should validate_presence_of(:file) }
  it { should belong_to(:album) }
  if Imagine.orm == :mongoid
    context "with Mongoid" do
      it { should have_field(:file_name).of_type(String) }
      it { should have_field(:file_uid).of_type(String) }
      it { should be_timestamped_document }
    end
  end
end
