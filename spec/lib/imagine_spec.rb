require 'spec_helper'

describe 'Imagine' do
  describe 'setting the default plugin' do
    it 'should set Imagine.default_plugin' do
      Imagine.default_plugin = 'basic_list_view'
      Imagine.default_plugin.should == 'basic_list_view'
    end
  end
end
