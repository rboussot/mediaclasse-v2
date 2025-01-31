module Attachinary
  module FileMixin
    def as_json(options = nil)
      super(only: [:id, :public_id, :format, :version, :resource_type], methods: [:path])
    end
  end
end
