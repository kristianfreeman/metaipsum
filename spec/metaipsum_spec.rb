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
    Metaipsum.generator.should == nil
  end

  it 'should pick a random number between 20 and 30 for count' do
    (20..30).should cover(Metaipsum.count)
  end

end
