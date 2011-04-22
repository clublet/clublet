Factory.define :vote do |f|
  f.vote true
  f.sequence(:voteable_id) {|n| n}
  f.voteable_type "Idea"
  f.voter_id 1
  f.voter_type "User"
end