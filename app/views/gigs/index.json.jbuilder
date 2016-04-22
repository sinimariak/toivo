json.array!(@gigs) do |gig|
  json.extract! gig, :id, :price, :details, :pictures, :paid, :user_id
  json.url gig_url(gig, format: :json)
end
