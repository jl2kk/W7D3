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
class Goal < ApplicationRecord
  belongs_to :user

  validates :name, presence: true

end
