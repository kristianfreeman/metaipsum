require 'spec_helper'

describe Metaipsum do

  placeText = 'This is a test of the energy response system. All systems down! Crap!'

  it 'should return correct version string' do
    Metaipsum.version.should == "Metaipsum version #{Metaipsum::VERSION}"
  end

  it 'should load a file' do
    ARGV[0] = 'spec/test.txt'
    Metaipsum.load.should == placeText
  end

  it 'should warn about small sources' do
    ARGV[0] = 'spec/short_test.txt' # Under 10 words
    Metaipsum.generator.should == 'Short input detected. A bigger source is recommended.'
  end

  it 'should handle sentence splitting' do
    ARGV[0] = 'spec/test.txt'
    ARGV[1] = '-s'
    Metaipsum.generator.should == ["This is a test of the energy response system", "All systems down", "Crap!"]
  end
end
