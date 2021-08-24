class TooLoudError < StandardError

  def initialize(msg = nil)
    super(msg || "Too loud!!!")
  end
end