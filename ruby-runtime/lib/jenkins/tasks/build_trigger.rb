require 'jenkins/tasks/build_step'

module Jenkins
  module Tasks
    # Triggers builds of other projects.
    #
    # Despite what the name suggests, this class doesn't actually trigger other jobs
    # as a part of #perform method. Its main job is to simply augment
    # DependencyGraph. Jobs are responsible for triggering downstream jobs
    # on its own, because dependencies may come from other sources.
    #
    # This class, however, does provide the #execute(AbstractBuild, BuildListener, BuildTrigger)
    # method as a convenience method to invoke downstream builds.
    class BuildTrigger
      include Jenkins::Model
      include Jenkins::Model::Describable

      describe_as Java.hudson.tasks.BuildTrigger
    end
  end
end
