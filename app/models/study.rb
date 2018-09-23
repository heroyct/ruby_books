class Study
  def full_name(last, first)
    "#{last} #{first}"
  end

  def self.output
    data = <<-"EOS"
    {
      "language": "Ruby"
    }
    EOS

    puts data
  end
end
