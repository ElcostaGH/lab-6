class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    puts "EmailValidator called for #{attribute} with value #{value}"
    puts "User.exists?(email: #{value}) = #{User.exists?(email: value)}"
    unless User.exists?(email: value)
      record.errors[attribute] << (options[:message] || "is not a valid user email")
    end
  end
end