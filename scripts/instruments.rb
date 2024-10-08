# List of common instruments
instruments = %w[
  vl va vc db pno fl ob cl
]

# Method to generate a random distribution of instruments
def random_instrument_distribution(instruments, min_size = 1, max_size = 6)
  distribution_size = rand(min_size..max_size)
  instruments.sample(distribution_size).join(', ')
end

# Generate 1000 random distributions
distributions = 5289.times.map do
  random_instrument_distribution(instruments)
end

# Print the distributions
distributions.each_with_index do |distribution, index|
  puts "#{distribution}"
end