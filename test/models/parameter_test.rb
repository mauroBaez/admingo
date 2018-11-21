# == Schema Information
#
# Table name: parameters
#
#  id         :integer          not null, primary key
#  code       :string           not null
#  value      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_parameters_on_code  (code) UNIQUE
#

require 'test_helper'

class ParameterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
