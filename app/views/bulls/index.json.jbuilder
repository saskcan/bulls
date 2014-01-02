json.array!(@bulls) do |bull|
  json.extract! bull, :id, :name, :tag, :dob, :weight, :scrotum, :sire, :dam
  json.url bull_url(bull, format: :json)
end
