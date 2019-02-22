require 'spec_helper'
require './mumble'

describe Mumble do
  subject { Mumble.mumble_letters(str) }

  context 'when empty' do
    let(:str) { ''}

    it { is_expected.to eq('') }
  end

  context 'when a' do
    let(:str) { 'a'}

    it { is_expected.to eq('A') }
  end

  context 'when b' do
    let(:str) { 'b'}

    it { is_expected.to eq('B') }
  end

  context 'when ab' do
    let(:str) { 'ab'}

    it { is_expected.to eq('A-Bb') }
  end

  context 'when ac' do
    let(:str) { 'ac'}

    it { is_expected.to eq('A-Cc') }
  end

  context 'when abc' do
    let(:str) { 'abc'}

    it { is_expected.to eq('A-Bb-Ccc') }
  end

  context 'when QWERTY' do
    let(:str) { 'QWERTY'}

    it { is_expected.to eq('Q-Ww-Eee-Rrrr-Ttttt-Yyyyyy') }
  end
end
