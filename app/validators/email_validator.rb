class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    puts "EmailValidator called for #{attribute} with value #{value}"
    user = User.find_by(email: value)
    puts "Author matches email? #{user.present?}"
    if user.blank?
      record.errors.add(attribute, "is not a valid author")
    end
  end
end