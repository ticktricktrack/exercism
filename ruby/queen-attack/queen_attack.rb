class Queens
  attr_reader :white, :black

  def initialize(opts)
    raise ArgumentError if opts[:white].any? { |pos| !(1..8).cover?(pos) }
    @white = Queen.new(opts[:white])
    @black = Queen.new(opts[:black])
  end

  def attack?
    same_rank? || same_file? || diagonal?
  end

  private

  def same_rank?
    white.rank == black.rank
  end

  def same_file?
    white.file == black.file
  end

  def diagonal?
    ((white.file - black.file) / (white.rank - black.rank)).abs == 1
  end
end

class Queen
  attr_reader :rank, :file

  def initialize(pos)
    pos ||= []
    @rank = pos.first
    @file = pos.last
    # raise ArgumentError unless (1..8).cover?(@rank)
    # raise ArgumentError unless (1..8).cover?(@file)
  end
end
