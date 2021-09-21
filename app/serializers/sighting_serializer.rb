class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  belongs_to :bird
  belongs_to :location
end

#serializable_hash returns a serialized hash
#serialized_json returns a JSON string respectiviely