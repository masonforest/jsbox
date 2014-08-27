class Script < ActiveRecord::Base
  after_initialize :set_default_values

  def set_default_values
    self.name ||= SecureRandom.hex(2)
  end

  def execute
    ExecJS.eval(body)
  end
end
