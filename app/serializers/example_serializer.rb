# frozen_string_literal: true
class ExampleSerializer < ActiveModel::Serializer
  attributes :id, :text, :bool, :editable

  def editable
    scope == object.user
  end
end
