require File.dirname(__FILE__) + '/helper'

describe 'AnyData' do
  
  should "read from the calling file after __END__" do
    AnyData.new.read.should.eql("1,2,3\n4,5,6\n7,8,9")
  end
  
  should "read from the given file after __END__" do
    file = File.expand_path File.join(File.dirname(__FILE__), 'end_data.rb')
    AnyData.new(file).read.should.eql("10,11,12\n13,14,15")
  end

end

__END__
1,2,3
4,5,6
7,8,9