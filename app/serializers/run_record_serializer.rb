class RunRecordSerializer < ActiveModel::Serializer
  attributes :id, :date, :difficulty, :distance, :time, :pace, :notes
  has_one :user
end
