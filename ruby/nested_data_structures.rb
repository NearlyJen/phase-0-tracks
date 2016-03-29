cross_family = {

	jennifer: {
		middle_name: "Lynn",
		kidney_count: 1,
		sports: ["rowing", "kung-fu", "crossfit"]

	},

	theron: {
		middle_name: "Andrew",
		kidney_count: 2,
		sports: ["swimming", "kung-fu", "crossfit"]

	},

	ethan:  {
		middle_name: "Samuel",
		kidney_count: 2,
		sports: ["running", "kung-fu", "soccer"]

	}
}


cross_family[:jennifer][:middle_name].downcase.reverse #"nnyl"
cross_family[:ethan][:sports][2] #"soccer"
cross_family[:theron][:kidney_count].to_s #{}"2"
