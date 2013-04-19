module Jenkins::Tasks
  class BuildTriggerProxy < Java.hudson.tasks.BuildTrigger
    include BuildStepProxy
    proxy_for Jenkins::Tasks::BuildTrigger
  end
end
