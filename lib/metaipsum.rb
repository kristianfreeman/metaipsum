require "metaipsum/version"

module Metaipsum

  def self.version
    "Metaipsum version #{Metaipsum::VERSION}"
  end

  def self.load
    # Test for smaller files
    base = ARGV[0]
    gen = File.open("#{base}").read
  end

  def self.generator
    base = ARGV[0]
    gen = File.open("#{base}").read

    # Unimplemented count variable
    # ARGV[1].is_a?(Numeric) ? count = ARGV[1] : count = ARGV[2]
    
    case ARGV[1]
    # Sentence argument
    when '-s'
      array = gen.split(/[.!] /) # Split either periods and space, or exclamation points and space
    else
      gen.split.size < 10 ? "Short input detected. A bigger source is recommended." : array = gen.chars.to_a
    end

  rescue Errno::ENOENT => e
    print <<-eos 
    You just broke everything. Just kidding - maybe you forgot to specify a file?"
    USAGE: metaipsum <filename>
    eos
  end

  def self.creator
    return 0
  end
end
