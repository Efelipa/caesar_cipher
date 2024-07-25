require 'spec_helper'
require_relative '../caesar_cipher'

RSpec.describe 'Array Exercises' do
  describe 'Key value as 5' do
    it 'return a string with next five positions' do
      expect(caesar_cipher("What a string!", 5)).to eq('Bmfy f xywnsl!') 
    end
  end
end