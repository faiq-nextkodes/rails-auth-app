class PriceCheckValidator < ActiveModel::Validator
  def validate(record)
    if record.price.present? && record.price <= 10
      record.errors.add :price, "Price can't be less than 10 PKR."
    end
  end
end
