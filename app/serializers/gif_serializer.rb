# frozen_string_literal: true

class GifSerializer < ActiveModel::Serializer
  attributes :id, :name, :gif_url, :editable

  belongs_to :user

  def editable
    scope == object.user
  end
end
