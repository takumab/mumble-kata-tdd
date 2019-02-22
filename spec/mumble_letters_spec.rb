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

    it { is_expected.to eq('ABB') }
  end

  context 'when ac' do
    let(:str) { 'ac'}

    it { is_expected.to eq('ACC') }
  end
end
