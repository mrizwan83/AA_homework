# == Schema Information
#
# Table name: albums
#
#  id      :bigint           not null, primary key
#  band_id :integer          not null
#  title   :string           not null
#  year    :integer          not null
#  live    :boolean          default(FALSE), not null
#
class Album < ApplicationRecord
  validates :band_id, :title, :year, :live, presence: true 

  belongs_to :band,
  foreign_key: :band_id,
  class_name: :Band
end
