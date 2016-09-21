# Helper methods defined here can be accessed in any controller or view in the application

module PadrinoAndGrape
  class App
    module BaseHelper
      def foo
        nil
      end
    end

    helpers BaseHelper
  end
end
