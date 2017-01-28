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

# tag examples
# Tag.create(tag: "ask", description: "ask tag")
# Tag.create(tag: "inactive", description: "inactive tag", inactive: true)
# Tag.create(tag: "media", description: "media tag", is_media: true)
# Tag.create(tag: "meta", description: "meta tag")
# Tag.create(tag: "negative hotness", description: "negative hotness tag", hotness_mod: -1)
# Tag.create(tag: "privileged", description: "privileged tag", privileged: true)
# Tag.create(tag: "positive hotness", description: "positive hotness tag", hotness_mod: 1)
# Tag.create(tag: "show", description: "show tag")

Tag.create(tag: "ask", description: "Ask PL Weekly members your questions", hotness_mod: 0.25)
Tag.create(tag: "show", description: "Show PL Weekly what you've been up to", hotness_mod: 0.5)
Tag.create(tag: "meta", description: "Talk about PL Weekly web app & newsletter", hotness_mod: -0.25)
Tag.create(tag: "fun", description: "Fun stuff from around the web")

Tag.create(tag: "channels", description: "Other eCommerce sales channels")
Tag.create(tag: "amazon", description: "Amazon sales channel")
Tag.create(tag: "shopify", description: "Shopify sales channel")
Tag.create(tag: "ebay", description: "eBay sales channel")
Tag.create(tag: "facebook", description: "Facebook marketing and sales channel")
Tag.create(tag: "jet", description: "Jet.com and Walmart sales channel")

Tag.create(tag: "audio", description: "Audio media like podcasts", is_media: true)
Tag.create(tag: "video", description: "Video media like YouTube", is_media: true)
Tag.create(tag: "books", description: "Book and eBook media", is_media: true)
Tag.create(tag: "docs", description: "Document media like slides and spreadsheets", is_media: true)

Tag.create(tag: "research", description: "Product research phase")
Tag.create(tag: "selection", description: "Product selection phase")
Tag.create(tag: "sourcing", description: "Product sourcing phase")
Tag.create(tag: "importing", description: "Freight forwarding and importing from overseas")
Tag.create(tag: "logistics", description: "Shipping and logistics")
Tag.create(tag: "listings", description: "Product listing tips")
Tag.create(tag: "marketing", description: "Marketing, promotions and growing an audience")
Tag.create(tag: "ads", description: "Advertising & PPC advice")
Tag.create(tag: "pricing", description: "Product pricing discussions")
Tag.create(tag: "reviews", description: "Reviews and customer feedback systems")

Tag.create(tag: "legal", description: "Legal resources and challenges")
Tag.create(tag: "finance", description: "Financial and accounting info")
Tag.create(tag: "software", description: "Software tools and services")
Tag.create(tag: "strategy", description: "Business strategy and planning")
Tag.create(tag: "fun", description: "Fun stuff from around the web")
Tag.create(tag: "event", description: "eCommerce events and conventions")
Tag.create(tag: "attitude", description: "Maintain a strong mental attitude despite setbacks")

puts "created tags"

# Notes - see GitHub Wiki for details on tags & attributes
