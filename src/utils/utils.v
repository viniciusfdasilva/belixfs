module utils

import sys

pub fn usage()
{
	println('**************** Welcome to ${sys.SYSTEM_NAME} ****************'    )
	println('Version: ${sys.VERSION_TEXT}')
	println('Copyright © ${sys.RELEASE_YEAR} ${sys.AUTHOR}. All Rights Reserved.')
	println('\n')

	println('usage: Belix [-h] [-l] [-sl] [-S START] [-s STOP] [-r RM] [-n NAVIGATE] [-sr SNAPSHOTREMOVE]')
	println('Danix [-h] [-l] [-sl] [-S START] [-s STOP] [-r RM] [-n NAVIGATE] [-sr SNAPSHOTREMOVE]')
	println('\n\n')

	println('options:')
	println('  -h, --help            show this help message and exit')
	println('\n')

	println('usages:')
	

	println('****************************************************************'   )
}