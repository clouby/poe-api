module Helpers
  module Request
    def json
      JSON.parse(response.body)
    end
  end
end