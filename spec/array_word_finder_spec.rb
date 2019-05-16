require 'spec_helper'

describe ArrayWordFinder do
  let(:letters) { ('a'..'z').to_a }
  let(:word) { 'cat' }
  subject { described_class.new(letters, word) }

  describe '.initialize' do
    it { is_expected.to be_a(ArrayWordFinder) }

    context 'letters is not an Array' do
      let(:letters) { true }
      it 'should raise an ArgumentError exception' do
        expect { subject }.to raise_error(ArgumentError)
      end
    end

    context 'word is not a string' do
      let(:word) { true }
      it 'should raise an ArgumentError exception' do
        expect { subject.to raise_error(ArgumentError) }
      end
    end
  end

  describe '#word_in_array?' do
    subject { super().word_in_array? }

    context 'the word is found in the array' do
      it { is_expected.to be true }
    end

    context 'the word is not found in the array' do
      let(:letters) { ['b', 'a', 't'] }
      it { is_expected.to be false }
    end
  end

  describe '#word_strictly_in_array?' do
    let(:word) { 'mom' }
    subject { super().word_strictly_in_array? }

    context 'the array contains the letters in the word plus extras' do
      let(:letters) { ['m', 'o', 'm', 'm', 'y'] }
      it { is_expected.to be true }
    end

    context 'the array contains exactly the letters in the word' do
      let(:letters) { ['m', 'o', 'm'] }
      it { is_expected.to be true }
    end

    context 'the array contains too few of a particular letter' do
      let(:word) { 'moo' }
      it { is_expected.to be_falsey }
    end
  end
end
