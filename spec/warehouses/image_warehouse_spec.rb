require 'spec_helper'

describe ::Imagine::Warehouses::Image do
  before do
    @images = double('images')
    @images.stub(:find){ {} }
    @album = double('album')
    @album.stub(:id){ 1 }
    @album.stub(:images){ @images }
  end

  context "#find(id)" do
    before do
      @images.should_receive(:find).exactly(1).times
    end

    it "should look up an image" do
      described_class.find(@album, 1)
    end
  end

  context "#new(params)" do
    before do
      ::Imagine::Image.should_receive(:new).exactly(1).times
    end

    it "should prepare a new image in the given album" do
      described_class.new(@album, {})
    end
  end

  context "#save(image)" do
    before do
      @image = double
      @image.should_receive(:save).exactly(1).times
    end

    it "should persist an image" do
      described_class.save(@image)
    end
  end
end
