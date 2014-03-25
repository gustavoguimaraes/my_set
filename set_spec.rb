require 'rspec'

require './set.rb'

describe MySet do
  
  context 'empty' do
    it 'should return true if empty' do 
      empty_set = MySet.new()
      expect(empty_set.empty?).to eq(true)
    end

    it 'should return false if it has one or more elements' do 
      one_set = MySet.new()
      one_set.add("one")
      expect(one_set.empty?).to eq(false)
    end
  end

  context 'add method' do
    it 'should add elements' do 
      many_set = MySet.new()
      many_set.add("one")
      many_set.add(2)
      expect(many_set.elements).to include (2)
    end
    
    it 'should only add unique data' do
      one_set = MySet.new()
      one_set.add("one")
      expect{one_set.add("one")}.to raise_error CannotAddSameData
    end
  end

  context 'size method' do 
    it 'should return the number of elements in the elements array' do
      many_set = MySet.new()
      many_set.add("one")
      many_set.add(2)
      many_set.add("three")
      expect(many_set.size).to eq(3)
    end
  end

  context 'include? method' do
    it 'returns data if the data element is in the array' do
      one_set = MySet.new()
      one_set.add("one")
      expect(one_set.include?("one")).to eq(true)
    end
    
    it 'returns false if data element is not in the array' do
      one_set = MySet.new()
      one_set.add("one")
      expect(one_set.include?(2)).to eq(false)
    end
  end

end