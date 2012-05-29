require "metaipsum/version"
require 'clipboard'

module Metaipsum

  def self.version

    "Metaipsum version #{Metaipsum::VERSION}"

  end

  def self.count

    count = Random.rand(20..30)

  end

  def self.load
    # Test for smaller files
    base = ARGV[0]

    gen = File.open("#{base}").read

  end

  def self.clipboard

    Clipboard.copy "foo"
    Clipboard.paste

  end


  def self.generator

    base = ARGV[0]

    gen = File.open("#{base}").read
    
    if gen.split.size > 10 

      array = gen.split(/ /) 

      count = Metaipsum.count

      ipsum = "Metaipsum ruby etc "

      count.times do
        ipsum << array.sample + " "
      end

      Clipboard.copy ipsum
      
      print <<-eos
      You passed in:
      #{ gen }
      
      Here is your ipsum text:
      #{ ipsum }

      It has been copied to your clipboard.

      eos


    else

      return nil
      
    end

  rescue Errno::ENOENT => e

    print <<-eos 
    You just broke everything. Just kidding - maybe you forgot to specify a file?"
    USAGE: metaipsum <filename>
    eos

  end

end
