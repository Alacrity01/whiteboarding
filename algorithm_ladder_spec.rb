require_relative './algorithm_ladder.rb'
require 'rspec'

RSpec.describe AlgorithmLadder do  
  let(:algorithm) { AlgorithmLadder.new }

  describe '#sum_array' do
    it 'should return 10 if given [1, 2, 3, 4]' do
      expect(algorithm.sum_array([1, 2, 3, 4])).to eq(10)
    end
  end

  describe '#less_than_100' do
    it 'should return 10 if given [1, 2, 3, 4]' do
      expect(algorithm.less_than_100([99, 101, 88, 4, 2000, 50])).to eq([99, 88, 4, 50])
    end
  end

  # describe '#double_arr' do
  #   it 'should return '
end