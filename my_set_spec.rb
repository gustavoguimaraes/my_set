require 'rspec'

require './my_set.rb'

describe MySet do

let(:empty_set) { MySet.new }

let(:one_set) do
  set = MySet.new
  set.add("one")
  set
end

let(:many_set) do
  set = MySet.new
  set.add("one")
  set.add(2)
  set
end

  context '#empty?' do

    it 'should return true if empty' do
      expect(empty_set.empty?).to eq(true)
    end

    it 'should return false if it has one or more elements' do
      expect(one_set.empty?).to eq(false)
    end
  end

  context '#add ' do

    it 'should add elements' do
      expect(many_set.elements).to include (2)
    end

    it 'should only add unique data' do
      expect{one_set.add("one")}.to raise_error CannotAddSameData
    end
  end

  context '#size ' do
    it 'should return the number of elements in the elements array' do
      expect(many_set.size).to eq(2)
    end
  end

  context '#include? ' do
    it 'returns data if the data element is in the array' do
      expect(one_set.include?("one")).to eq(true)
    end

    it 'returns false if data element is not in the array' do
      expect(one_set.include?(2)).to eq(false)
    end
  end

end