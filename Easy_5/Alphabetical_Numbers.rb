WORDS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten',
        'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']


def alphabetic_number_sort(array)
  array.sort {|a, b| WORDS[a] <=> WORDS[b]}
end

p alphabetic_number_sort((0..19).to_a)