class StringCalculator
  # Main method to add numbers from a string
  def add(numbers)
    return 0 if numbers.empty?

    delimiter, numbers = extract_delimiter(numbers) 
    num_array = parse_numbers(numbers, delimiter)   
    validate_numbers(num_array)
    sum_numbers(num_array)
  end

  private

  # Extracts the delimiter and adjusts the numbers string if a custom delimiter is specified
  def extract_delimiter(numbers)
    if numbers.start_with?("//")
      delimiter = numbers[2] 
      numbers = numbers[4..-1]
    else
      delimiter = "," 
    end
    [delimiter, numbers]
  end

  # Parses the numbers string into an array of integers, splitting by the delimiter and newlines
  def parse_numbers(numbers, delimiter)
    numbers.split(/#{delimiter}|\n/).map(&:to_i)
  end

  # Validates the numbers array, raising an exception if any negative numbers are found
  def validate_numbers(num_array)
    negatives = num_array.select { |n| n < 0 }
    unless negatives.empty?
      raise "negative numbers not allowed: #{negatives.join(',')}"
    end
  end

  # Sums the array of numbers and returns the total
  def sum_numbers(num_array)
    num_array.reduce(0, :+)
  end
end
