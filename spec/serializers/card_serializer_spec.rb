require 'rails_helper'

RSpec.describe CardSerializer do
  let(:serializer) { described_class.new(card) }

  describe '#as_json' do
    let(:card) { build(:card, title: 'Write specs', description: 'Testing serializers') }

    it do
      expect(serializer.as_json.dig('data', 'attributes', 'title')).to eq("Write specs")
      expect(serializer.as_json.dig('data', 'attributes', 'description', 'body')).to eq("Testing serializers")
    end
  end
end
