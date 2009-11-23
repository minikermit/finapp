["admin", "guest", "standard", "editor"].each do |name|
	Role.find_or_create_by_name(name)
end