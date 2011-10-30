require 'spec_helper'

describe 'Imagine' do
  describe 'setting the orm' do
    it 'should set Imagine.orm' do
      Imagine.orm :mongoid
      Imagine.orm.should == :mongoid
    end
  end
  describe 'setting the plugins' do
    it 'should set Imagine.plugins' do
      Imagine.plugins [ :orbit_view ]
      Imagine.plugins.should == [ :orbit_view ]
      Imagine.default_plugin.should == :orbit_view
    end
  end
  describe 'setting the default plugin' do
    it 'should set Imagine.default_plugin' do
      Imagine.default_plugin :basic_list_view
      Imagine.default_plugin.should == :basic_list_view
    end
  end
  describe 'loading plugin engines' do
    it "shoud have registrations from all loaded plugins engines" do
      Imagine.engines.should == %w( basic_list_view galleria_view orbit_view )
    end
  end
end
