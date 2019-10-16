class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year_released, :created_at, :updated_at

  def year_released
    object.release_date&.year || 'Unknown'
  end
end
