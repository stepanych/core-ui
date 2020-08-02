<?php
/**
 * Widgets.config.php
 *
 * This type of configuration method requires ProcessWire 2.5.5 or newer.
 * For backwards compatibility with older versions of PW, you'll want to
 * instead want to look into the getModuleConfigInputfields() method, which
 * is specified with the .module file. So we are assuming you only need to
 * support PW 2.5.5 or newer here.
 *
 * For more about configuration methods, see here:
 * http://processwire.com/blog/posts/new-module-configuration-options/
 *
 */

class WidgetsConfig extends ModuleConfig {

	public function getInputfields() {
		$inputfields = parent::getInputfields();

		$widgetsArr = [];
		$all_widgets =  $this->pages->get("template=widgets")->children("include=all");
		foreach($all_widgets as $w) $widgetsArr[$w->id] = $w->title;

        $wrapper = new InputfieldWrapper();

        /**
         * 	Options
         *
         */
        $options = $this->wire('modules')->get("InputfieldFieldset");
        $options->label = __("Options");
        $options->icon = "fa-cog";
        $wrapper->add($options);

	        // center_modal
          $f = $this->wire('modules')->get("InputfieldInteger");
          $f->attr('name', 'widgets_per_page');
          $f->label = 'Number of widgets per page in admin';
          $f->value = "15";
          $options->add($f);

					// Protected
					$f = $this->wire('modules')->get("InputfieldAsmSelect");
					$f->attr('name', 'protected_widgets');
					$f->label = 'Protected Widgets';
					$f->options = $widgetsArr;
					$f->description = __("Widgets from this list can't be deleted.");
					$options->add($f);

					// delete_in_use
					$f = $this->wire('modules')->get("InputfieldRadios");
					$f->attr('name', 'delete_in_use');
					$f->label = 'Can delete widgets in use?';
					$f->options = array(
							'1' => $this->_('Yes'),
							'2' => $this->_('No'),
					);
					$f->required = true;
					$f->defaultValue = "2";
					$f->optionColumns = 1;
					$f->columnWidth = "100%";
					$options->add($f);

				// render fieldset
        $inputfields->add($options);


		// render fields
		return $inputfields;


	}

}
