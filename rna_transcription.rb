
# Given a DNA strand, return its RNA complement (per RNA transcription).

# Both DNA and RNA strands are a sequence of nucleotides.

# The four nucleotides found in DNA are adenine (A), cytosine (C), guanine (G) and thymine (T).

# The four nucleotides found in RNA are adenine (A), cytosine (C), guanine (G) and uracil (U).

# Given a DNA strand, its transcribed RNA strand is formed by replacing each nucleotide with its complement, as follows:

# G -> C
# C -> G
# T -> A
# A -> U

# So based on all this, here's a sample input/output:

# Input: 'ACGTGGTCTTAA'
# Output: 'UGCACCAGAAUU

def rna_transcription(string)
  hash = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}
  new_string = ""

  i = 0
  hash.each do |k, v|
    string.length.times do
      string[i]
    end
  end
  
  new_string
end

rna_transcription('ACGTGGTCTTAA')