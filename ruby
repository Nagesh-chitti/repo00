# Get all records
users = User.all

# Find by primary key (id)
user = User.find(1)  # Raises error if not found
user = User.find_by(id: 1) # Returns nil if not found

# Find first or last record
first_user = User.first
last_user  = User.last

# Conditional queries
admins = User.where(role: 'admin')
active_users = User.where(active: true).order(:created_at)

# Select specific columns
names = User.select(:id, :name)

# Limit & offset
top_5 = User.limit(5)
next_5 = User.offset(5).limit(5)

