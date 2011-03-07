<?php
/**
* @package   Warp Theme Framework
* @file      system.php
* @version   5.5.11
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright  2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

/*
	Class: WarpHelperSystem
		Joomla! system helper class, provides Joomla! 1.6 CMS integration (http://www.joomla.org)
*/
class WarpHelperSystem extends WarpHelper {

	/* application */
	var $application;

	/* document */
	var $document;

	/* language */
	var $language;

	/* system path */
	var $path;

	/* system url */
	var $url;

	/* cache path */
	var $cache_path;

	/* cache time */
	var $cache_time;

	/*
		Function: Constructor
			Class Constructor.
	*/
	function __construct() {
		parent::__construct();		

		// init helpers
        $path  = $this->getHelper('path');
        $event = $this->getHelper('event');

		// init vars
		$this->application = JFactory::getApplication();
        $this->document    = JFactory::getDocument();
		$this->language    = JFactory::getLanguage();
        $this->path        = JPATH_ROOT;
        $this->url         = JURI::root(true);
        $this->cache_path  = $this->path.'/cache/template';
        $this->cache_time  = max(JFactory::getConfig()->getValue('config.cachetime') * 60, 86400);

		// set cache directory
		if (!file_exists($this->cache_path)) {
			JFolder::create($this->cache_path);
		}

		// set paths
        $path->register($this->path.'/administrator', 'admin');
        $path->register($this->path, 'site');
        $path->register($this->path.'/cache/template', 'cache');
		$path->register($path->path('warp:systems/joomla.1.6/menus'), 'menu');

		// set translations
		$this->language->load('tpl_warp', $path->path('warp:systems/joomla.1.6'), null, true);
		
		// set event
		$event->bind('render.template', array($this, 'init'));

		// is admin ?
		if ($this->application->isAdmin()) {
			
			// get helper
			$xml  = $this->getHelper('xml');
			$http = $this->getHelper('http');
			
			// get xml's
			$tmpl_xml = $xml->load($path->path('template:templateDetails.xml'), 'xml');
			$warp_xml = $xml->load($path->path('warp:warp.xml'), 'xml');

			// update check
			if ($url = $warp_xml->document->getElement('updateUrl')) {

				// get template info
				$template = $tmpl_xml->document->getElement('name');
				$version  = $tmpl_xml->document->getElement('version');
				$url      = sprintf('%s?application=%s&version=%s&format=raw', $url->data(), $template->data().'_j16', $version->data());

				// check cache
				$file  = $this->cache_path.sprintf('/%s.php', $template->data());
				$cache = file_exists($file) ? @unserialize(file_get_contents($file)) : null;

				if (!is_array($cache) || !isset($cache['check']) || !isset($cache['data'])) {
					$cache = array('check' => null, 'data' => null);
				}

				// only check once a day 
				if ($cache['check'] != date('Y-m-d').' '.$version->data()) {
					if ($request = $http->get($url)) {
						$cache = array('check' => date('Y-m-d').' '.$version->data(), 'data' => $request['body']);
						@file_put_contents($file, serialize($cache));
					}
				}

				// decode response and set message
				if (($response = json_decode($cache['data'])) && isset($response->status, $response->message) && $response->status == 'update-available') {
					$this->application->enqueueMessage($response->message, 'notice');
				}
			}
		}

	}

	/*
		Function: init
			Initialize system configuration

		Returns:
			Void
	*/
	function init() {

		if ($this->application->isSite()) {

			// init helpers
			$config = $this->getHelper('config');

			// set config
			$config->set('language', $this->document->language); 
			$config->set('direction', $this->document->direction); 
			$config->set('actual_date', JHTML::_('date', 'now', JText::_('DATE_FORMAT_LC')));

            // get template params
            $config->loadArray($this->document->params->toArray());
            
            // get page class suffix params
            $params = $this->application->getParams();
            $config->parseString($params->get('pageclass_sfx'));
            
			// dynamic presets ?
            if ($config->get('allow_dynamic_preset')) {
                if ($var = JRequest::getVar($this->warp->preset_var, null, 'default', 'alnum')) {
                    $this->application->setUserState('_current_preset', $var);
                }
                $config->set('_current_preset', $this->application->getUserState('_current_preset'));
            }
        }
		
	}

	/*
		Function: isBlog

		Returns:
			Boolean
	*/
	function isBlog() {
		if (JRequest::getCmd('option') == 'com_content') {
			if (in_array(JRequest::getCmd('view'), array('frontpage', 'article', 'archive', 'featured')) || (JRequest::getCmd('view') == 'category' && JRequest::getCmd('layout') == 'blog')) {
				return true;
			}
		}
		if ($this->warp->config->get('custom') == 'nobox') {
			return true;
		}
		return false;
	}

}