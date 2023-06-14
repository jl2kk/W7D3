# == Schema Information
#
# Table name: goals
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  status     :boolean          not null
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Goal, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
