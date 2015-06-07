require 'spec_helper'

describe Jenkins::Triggers::TriggerProxy do
  include ProxyHelper

  before do
    @job = double(Java::HudsonModel::Item)
    @object = double(Jenkins::Triggers::Trigger)
    @builder = Jenkins::Triggers::TriggerProxy.new(@plugin, @object)
  end

  describe "run" do
    it "calls through to its implementation" do
      expect(@object).to receive(:run)
      @builder.run
    end
  end

  describe "start" do
    it "calls through to its implementation with proper parameters" do
      @job.should_receive(:full_name).and_return(:job_name)
      @object.should_receive(:job=).with(@job)
      @object.should_receive(:start).with(@job, false)
      @builder.start(@job, false)
    end
  end

  describe "stop" do
    it "calls through to its implementation" do
      expect(@object).to receive(:stop)
      @builder.stop
    end
  end
end
