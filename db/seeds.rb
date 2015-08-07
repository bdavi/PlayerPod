# Create testing user
user = User.new(
  email: 'brian@briandavies.me',
  password: 'adminadmin'
)
user.skip_confirmation!
user.save!