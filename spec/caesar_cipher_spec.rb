require './lib/caesar_cipher'

describe '#cypher_char' do
  context 'when incrementing by 1' do
    it 'outputs b' do
      expect(cypher_char('a', 1)).to eq('b')
    end
    it 'wraps to a when inputing z' do
      expect(cypher_char('z', 1)).to eq('a')
    end
  end
  context 'nums are greater than the size of the alphabet' do
    it 'wraps back to a when given 26' do
      expect(cypher_char('a', 26)).to eq('a')
    end
  end
  context 'when input is irregular' do
    it 'returns back letters not in the english alphabet' do
      expect(cypher_char('å', 1)).to eq('å')
    end
    it 'returns back special characters' do
      expect(cypher_char(' ', 1)).to eq(' ')
    end
  end
end
