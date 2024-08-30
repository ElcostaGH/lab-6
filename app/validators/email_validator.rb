class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    user = User.find_by(email: value)
    record.errors.add(attribute, "is not a valid author") unless user.present?
  end
end