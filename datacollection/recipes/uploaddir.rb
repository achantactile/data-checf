node[:deploy].each do |app_name, deploy|
	app_root = "#{deploy[:deploy_to]}/current"

	directory "#{app_root}/uploads" do
		mode '0777'
		recursive true
		action create
	end 
end