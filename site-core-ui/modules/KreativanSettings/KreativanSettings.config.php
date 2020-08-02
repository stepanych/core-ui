<?php

class KreativanSettingsConfig extends ModuleConfig {

  public function getInputfields() {
		$inputfields = parent::getInputfields();
    $wrapper = new InputfieldWrapper();

    /* =================================================================
    	Options
    ==================================================================== */
    $options = $this->wire('modules')->get("InputfieldFieldset");
		$options->label = __("Options");
		// $options->collapsed = 1;
		$options->icon = "fa-cog";
		$wrapper->add($options);

      // default_lang
			$f = $this->wire('modules')->get("InputfieldText");
			$f->attr('name', 'default_lang');
			$f->label = 'Default language code';
			$f->columnWidth = "100%";
			$f->description = "Default languge code eg: `en` for english";
			$options->add($f);

    $inputfields->add($options);

    /* =================================================================
    	Scripts
    ==================================================================== */
    $scripts = $this->wire('modules')->get("InputfieldFieldset");
		$scripts->label = __("Scripts");
		$scripts->collapsed = 1;
		$scripts->icon = "fa-code";
		$wrapper->add($scripts);

      // scripts_in_head
			$f = $this->wire('modules')->get("InputfieldTextarea");
			$f->attr('name', 'scripts_in_head');
			$f->label = 'Scripts in Head';
			$f->columnWidth = "100%";
			$f->rows = "10";
			$f->notes = __("These scripts will be included in the `<head>` section.");
			$scripts->add($f);

			// scripts_in_body
			$f = $this->wire('modules')->get("InputfieldTextarea");
			$f->attr('name', 'scripts_in_body');
			$f->label = 'Scripts in Body';
			$f->columnWidth = "100%";
			$f->rows = "10";
			$f->notes = __("These scripts will be included just below opening `<body>` tag.");
			$scripts->add($f);

			// scripts_in_footer
			$f = $this->wire('modules')->get("InputfieldTextarea");
			$f->attr('name', 'scripts_in_footer');
			$f->label = 'Scripts in Footer';
			$f->columnWidth = "100%";
			$f->rows = "10";
			$f->notes = __("These scripts will be included before closing `</body>` tag.");
			$scripts->add($f);

    $inputfields->add($scripts);

    return $inputfields;

  }


}
