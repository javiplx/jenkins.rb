require 'spec_helper'

describe Jenkins::Tasks::BuildTriggerProxy do
  include ProxyHelper

  before do
    @object = mock(Jenkins::Tasks::BuildTrigger)
    @trigger = Jenkins::Tasks::BuildTriggerProxy.new(@plugin, @object)
  end

  describe "execute" do
    it "calls through to its implementation" do
      @object.should_receive(:execute).with(@build, @listener)
      @trigger.execute(@jBuild, @jListener)
    end
    
  end
end