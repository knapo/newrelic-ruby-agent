# encoding: utf-8
# This file is distributed under New Relic's license terms.
# See https://github.com/newrelic/newrelic-ruby-agent/blob/main/LICENSE for complete details.


module NewRelic::Agent::Instrumentation
  module Resque
    module Prepend 
      include NewRelic::Agent::Instrumentation::ControllerInstrumentation
      include NewRelic::Agent::Instrumentation::Resque::Instrumentation

      def perform
        with_tracing { super }
      end
    end
  end
end
