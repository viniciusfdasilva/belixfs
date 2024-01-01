import belix
import utils
import os


fn get_args(args []string)
{	
	match args[0] or { panic('[PANIC] - Argument missed!') } {

		'-h', '--help'          { utils.usage()                }
		'-t', '--template'      { belix.subsystem_create()     }
		'-l', '--list'          { belix.subsystem_list()       }
		'-s', '--start'         { belix.subsystem_start()      }
		'-S', '--stop'          { belix.subsystem_stop()       }
		'-r', '--remove'        { belix.subsystem_remove()     }
		'-n', '--navigate'      { belix.subsystem_navigate()   }
		'-sr','-snapshotremove' { belix.snapshot_remove()      }
		'-sc','-snapshotcreate' { belix.snapshot_create()      }
		'-sl','-snapshotlist'   { belix.snapshot_list()        }
		'-sb', '-snapshotback'  { belix.snapshot_back()        }
		'-c', '--copy'          { belix.copy()                 }
		else                    { utils.usage()                }
	}
	
}

pub fn main(){
	get_args(os.args[1..])
}