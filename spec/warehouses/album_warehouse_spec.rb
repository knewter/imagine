require 'spec_helper'

describe ::Imagine::Warehouses::Album do
  context "#find(id)" do
    before do
      ::Imagine::Album.should_receive(:find).exactly(1).times
    end

    it "should look up an album" do
      described_class.find(1)
    end
  end

  context "#new(params)" do
    before do
      ::Imagine::Album.should_receive(:new).exactly(1).times
    end

    it "should prepare a new album" do
      described_class.new({})
    end
  end

  context "#save(album)" do
    before do
      @album = double
      @album.should_receive(:save).exactly(1).times
    end

    it "should persist an album" do
      described_class.save(@album)
    end
  end
end
