module PmTurboClone
  class Engine < ::Rails::Engine
    isolate_namespace PmTurboClone

    initializer "turbo.mediatype" do
      Mime::Type.register "text/vnd.turbo-stream.html", :turbo_stream
    end

    initializer "turbo.helper" do
      ActiveSupport.on_load :action_controller_base do 
        helper PmTurboClone::Engine.helpers
      end
    end
  end
end
