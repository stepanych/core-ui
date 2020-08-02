<?php
/**
 * cmsTheme.info.php
 *
 * Return information about this module.
 *
 * If preferred, you can use a getModuleInfo() method in your module file,
 * or you can use a ModuleName.info.json file (if you prefer JSON definition).
 *
 */

$info = array(

	// Your module's title
	'title' => 'Kreativan Settings',

	// A 1 sentence description of what your module does
	'summary' => 'System settings UI',

	// Module version number: use 1 for 0.0.1 or 100 for 1.0.0, and so on
	'version' => 1,

	// Name of person who created this module (change to your name)
	'author' => 'Ivan Milincic',

	// Icon to accompany this module (optional), uses font-awesome icon names, minus the "fa-" part
	'icon' => 'cog',

	// URL to more info: change to your full modules.processwire.com URL (if available), or something else if you prefer
  'href' => 'http://modules.processwire.com/',

	// name of permission required of users to execute this Process (optional)
	'permission' => 'page-view',

	// permissions that you want automatically installed/uninstalled with this module (name => description)
	'permissions' => array(
		'cms-settings' => 'Access to system settings'
	),

	// page that you want created to execute this module
	'page' => array(
		'name' => 'settings',
		'parent' => 'manage',
		'title' => 'Settings',
  ),

  'singular' => true,
	'autoload' => false, // need for Redirect

	// dependency
	'requires' => ["KreativanHelper"],

	// for more options that you may specify here, see the file: /wire/core/Process.php
	// and the file: /wire/core/Module.php

);
