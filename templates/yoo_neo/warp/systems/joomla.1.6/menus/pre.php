<?php
/**
* @package   Warp Theme Framework
* @file      pre.php
* @version   5.5.11
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright  2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

/*
	Class: WarpMenuPre
		Menu base class
*/
class WarpMenuPre extends WarpMenu {

	/*
		Function: process

		Returns:
			Xml Object
	*/	
	function process($module, $xmlobj) {

		if ($ul = $xmlobj->document->getElement('ul')) {
			$this->_process($module, $ul);
			return $ul;
		}

		return false;
	}

	function _process($module, $xmlobj, $level = 0) {

		$menu 	= JSite::getMenu();
		$images = strpos($module->parameter->get('class_sfx'), 'images-off') === false;

		foreach ($xmlobj->children('li') as $li) {

			// get menu item id
			$id = (int) str_replace('item-', '', $li->_attributes['id']);

			// is current/active ?
			if ($li->hasClass('current')) {
				$isActive = 2;
			} else if ($li->hasClass('active')) {
				$isActive = 1;
			} else {
				$isActive = 0;
			}

			// reset attributes
			$li->_attributes = array();

			// get menu item params
			$item = $menu->getItem($id);

			// get class suffix params
			$page_params = array();
			$parts = preg_split('/[\s]+/', $item->params->get('pageclass_sfx'));

			foreach ($parts as $part) {
				if (strpos($part, '-') !== false) {
					list($name, $value) = explode('-', $part, 2);
					$page_params[$name] = $value;
				}
			}

			$columns     = isset($page_params['columns']) ? (int) $page_params['columns'] : 1;
			$columnwidth = isset($page_params['columnwidth']) ? (int) $page_params['columnwidth'] : -1;

			$li->addAttribute('data-menu-active', $isActive);
			$li->addAttribute('data-menu-columns', $columns);
			$li->addAttribute('data-menu-columnwidth', $columnwidth);

			// add item background image
			if ($item->params->get('menu_image') && $item->params->get('menu_image') != -1) {
				if (isset($li->_children[0])) {

					$img  = $li->_children[0]->child('img');
					$span = $li->_children[0]->child('span');

					if (!$span) {
						$li->_children[0]->createElement('span', $item->title);
					}

					$li->_children[0]->removeChild($img);

					if ($images) {
						$img = $item->params->get('menu_image');
						$li->_children[0]->_children[0]->addAttribute('data-menu-image', JURI::base().$img);
					}
				}
			}

			$childList = $li->child('ul');

			if ($childList) {
				$this->_process($module, $childList, ($level+1));                   
			}

			if ($li->child('a')) {
				$link = $li->child('a');
				if (!count($link->_children)) {
					$link->parse('<span>'.$link->_data.'</span>');
					$link->_data = null;
				}
			}

		}

	}

}