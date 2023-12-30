module json

import time

@[noinit]
pub struct Environment{
	mut:
		uuid          string @[required] 
		status        bool   @[required]  
		created       time   @[required]
		size_in_mb    f32    @[required]
		template_name string @[required]
		
}

@[static]
pub fn new_environment(uuid string, status bool, created time, size_in_mb f32, template_name string){
	return Environment{
		uuid:          uuid
		status:        status
		created:       created
		size_in_mb:    size_in_mb
		template_name: template_name
	}
}


pub fn (env Environment) change_status(status bool)
{	
	env.status = status
}

@[noinit]
pub struct Snapshot{
	mut:
		uuid             string @[required]
		environment_uuid string @[required]
		created          time   @[required]
		size_in_mb       f32    @[required]
		is_last_snapshot bool   @[required]		
}

@[static]
pub fn new_snapshot(uuid string, environment_uuid string, created time, size_in_mb f32, is_last_snapshot bool){
	return Snapshot{
		uuid:             uuid
		environment_uuid: environment_uuid
		created:          created
		size_in_mb:       size_in_mb
		is_last_snapshot: is_last_snapshot
	}
}


