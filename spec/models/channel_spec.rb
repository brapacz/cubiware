require 'rails_helper'

RSpec.describe Channel, type: :model do
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_uniqueness_of :name }
  it { is_expected.not_to have_many(:shows).dependent(:destroy) }
end
