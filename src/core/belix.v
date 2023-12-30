module belix

import database    as json
import environment as env


const EXIT_FAILURE = 1
const EXIT_SUCCESS = 0

pub fn subsystem_create(){

	mut ok := json.create_environment()

	defer{ mut error_msg = 'Environment create error!' }

	if ok {

		ok = env.create_environment()

		if ok {
			println('Environment created successfully!')
			os.exit(EXIT_SUCCESS)
		}

		return error(error_msg)
	}

	return error(error_msg)

}

pub fn subsystem_list(){

} 

pub fn subsystem_start(){

}

pub fn subsystem_stop(){

} 

pub fn subsystem_remove(){

}  

pub fn subsystem_navigate(){

} 

pub fn snapshot_remove(){}

pub fn snapshot_create(){

}   

pub fn snapshot_list()
{

}   

pub fn snapshot_back()
{
	
}


pub fn copy()
{

}
