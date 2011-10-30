require 'spec_helper'

describe Imagine::Config do

  context "defaults" do
    it "should use the ActiveRecord orm by default" do
      subject.orm.should == :active_record
    end
    it "should have only the requested plugins activated" do
      subject.plugins.should == [ :basic_list_view, :galleria_view, :orbit_view ]
    end
    it "should use the basic_list_view plugin by default" do
      subject.default_plugin.should == :basic_list_view
    end
  end

  context "initialize with options" do
    subject { Imagine::Config.new(:orm => :mongoid,
                                  :plugins => [ :badass_view, :orbit_view ],
                                  :default_plugin => :orbit_view) }

    it "should use the Mongoid orm" do
      subject.orm.should == :mongoid
    end
    it "should have only the requested plugins activated" do
      subject.plugins.should == [ :badass_view, :orbit_view ]
    end
    it "should use the orbit_view plugin by default" do
      subject.default_plugin.should == :orbit_view
    end
  end

  context "initialize with block" do
    subject {
      Imagine::Config.new do |config|
        config.orm = :mongoid_blocked
        config.plugins = [ :badass_view_blocked, :orbit_view_blocked ]
        config.default_plugin = :orbit_view_blocked
      end
    }

    it "should use the Mongoid orm" do
      subject.orm.should == :mongoid_blocked
    end
    it "should have only the requested plugins activated" do
      subject.plugins.should == [ :badass_view_blocked, :orbit_view_blocked ]
    end
    it "should use the orbit_view plugin by default" do
      subject.default_plugin.should == :orbit_view_blocked
    end
  end

end
