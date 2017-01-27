# User Roles
# t.boolean  "is_admin",     default: false
# t.boolean  "is_moderator", default: false


# Tag attributes
# t.string  "tag",         limit: 25,  default: "",    null: false
# t.string  "description", limit: 100
# t.boolean "privileged",              default: false
# t.boolean "is_media",                default: false
# t.boolean "inactive",                default: false
# t.float   "hotness_mod", limit: 24,  default: 0.0

# user
User.create(:username => "test", :email => "test@example.com", :password => "test", :password_confirmation => "test", :is_admin => true, :is_moderator => true)

puts "created user: test, password: test"

# tags
Tag.create(tag: "ask", description: "ask tag")
Tag.create(tag: "inactive", description: "inactive tag", inactive: true)
Tag.create(tag: "media", description: "media tag", is_media: true)
Tag.create(tag: "meta", description: "meta tag")
Tag.create(tag: "negative hotness", description: "negative hotness tag", hotness_mod: -1)
Tag.create(tag: "privileged", description: "privileged tag", privileged: true)
Tag.create(tag: "positive hotness", description: "positive hotness tag", hotness_mod: 1)
Tag.create(tag: "show", description: "show tag")
Tag.create(tag: "test", description: "test tag")

puts "created tags"

# Notes - see GitHub Wiki for details on tags & attributes
