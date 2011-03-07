<?php
/**
* @package   Warp Theme Framework
* @file      checksum.php
* @version   5.5.12
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright  2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

/*
	Class: WarpHelperChecksum
		Checksum helper class
*/    
class WarpHelperChecksum extends WarpHelper {

	/*
		Function: create
			Create file checksums

		Parameters:
			$path - Path to files
			$checksums - Checksum filename

		Returns:
			Boolean
	*/	
	function create($path, $filename = 'checksums') {

		$path  = rtrim(str_replace(DIRECTORY_SEPARATOR, '/', $path), '/').'/';
		$files = $this->_readDirectory($path);

		if (is_array($files)) {
			$checksums = '';

			foreach ($files as $file) {

				// dont include the checksum file itself
				if ($file == $filename) {
					continue;
				}

				$checksums .= md5_file($path.$file)." {$file}\n";
			}

			return file_put_contents($path.$filename, $checksums);
		}
		
		return false;
	}

	/*
		Function: verify
			Verify file checksums

		Parameters:
			$path - Path to files
			$log - Log array
			$filename - Checksum filename

		Returns:
			Boolean
	*/	
	function verify($path, &$log, $filename = 'checksums') {
		$path = rtrim(str_replace(DIRECTORY_SEPARATOR, '/', $path), '/').'/';
		
		if ($rows = file($path.$filename)) {
			foreach ($rows as $row) {
				$parts = explode(' ', trim($row), 2);
				
				if (count($parts) == 2) {
					list($md5, $file) = $parts;

					if (!file_exists($path.$file)) {
						$log['missing'][] = $file;
					} elseif (md5_file($path.$file) != $md5) {
						$log['modified'][] = $file;
					}
				}
			}
		}

		return empty($log);
	}	

	/*
		Function: _readDirectory
			Read files form a directory

		Parameters:
			$path - Path to files
			$prefix - Prefix
			$recursive - Recursive

		Returns:
			Array
	*/
	function _readDirectory($path, $prefix = '', $recursive = true) {

		$files  = array();
	    $ignore = array('.', '..', '.DS_Store', '.svn', '.git', '.gitignore', '.gitmodules', 'cgi-bin');

		foreach (scandir($path) as $file) {
			
			// ignore file ?
	        if (in_array($file, $ignore)) {
				continue;
			}

			// get files
            if (is_dir($path.'/'.$file) && $recursive) {
            	$files = array_merge($files, $this->_readDirectory($path.'/'.$file, $prefix.$file.'/', $recursive));
			} else {
				$files[] = $prefix.$file;
            }
		}

		return $files;
	}

}