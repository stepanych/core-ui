<?php

class KreativanFormsConfig extends ModuleConfig {

	public function getInputfields() {
		$inputfields = parent::getInputfields();

		$wrapper = new InputfieldWrapper();

		$options = $this->wire('modules')->get("InputfieldFieldset");
		$options->label = __("Options");
		//$options->collapsed = 1;
    $options->icon = "fa-cog";
		$wrapper->add($options);

		// Alert
    $f = $this->wire('modules')->get("InputfieldRadios");
    $f->attr('name', 'alert_type');
    $f->label = 'Alert / Notifications Type';
    $f->options = array('alert' => 'Alert', 'dialog' => 'Dialog', 'notification' => "Nofitication");
    $f->required = true;
    $f->defaultValue = "alert";
    $f->optionColumns = 1;
    $f->columnWidth = "100%";
    $options->add($f);

		// render fieldset
    $inputfields->add($options);

		/* ----------------------------------------------------------------
			About
		------------------------------------------------------------------- */
		$about = $this->wire('modules')->get("InputfieldFieldset");
		$about->label = "About";
		//$options->collapsed = 1;
		$about->icon = "fa-info";
		$wrapper->add($about);

		$f = $this->wire('modules')->get("InputfieldMarkup");
		$f->collapsed = 1;
		$f->value = '
			<em class="uk-text-muted"><b>Fields</b>. Array of fields that should be passed to the renderForm() method</em> <br />
			<code>
			$fields = [ <br />
			&nbsp	"name" => [ <br />
				&nbsp&nbsp&nbsp	"type" => "heading|text|email|url|textarea|radio|checkbox|select|file|date|time", <em class="uk-text-muted">Field type</em> <br />
				&nbsp&nbsp&nbsp	"label" => "My Field", <em class="uk-text-muted">Field label</em> <br />
				&nbsp&nbsp&nbsp	"value" => "", <em class="uk-text-muted">Current (pre-selected) value. Array for checkbox...</em> <br />
				&nbsp&nbsp&nbsp	"placeholder" => "My field placeholder", <em class="uk-text-muted">Field placeholder</em> <br />
				&nbsp&nbsp&nbsp	"required" => "true", <em class="uk-text-muted">Is field required true-false</em> <br />
				&nbsp&nbsp&nbsp	"width" => "1-1", <em class="uk-text-muted">Uikit gird class (1-1, 1-2, 1-3 etc..)</em> <br />
				&nbsp&nbsp&nbsp	"rows" => 10, <em class="uk-text-muted">Used by textarea field</em> <br />
				&nbsp&nbsp&nbsp	"title" => "Heading Title", <em class="uk-text-muted">Used by heading</em> <br />
				&nbsp&nbsp&nbsp	"class" => "uk-h4 uk-heading-line", <em class="uk-text-muted">Used by heading</em> <br />
				&nbsp&nbsp&nbsp	"options" => ["Option 1","Option 2","Option, 3"], <em class="uk-text-muted">Used by radio, checkbox, select fields</em> <br />
				&nbsp&nbsp&nbsp	"accept" => ".jpg, .png", <em class="uk-text-muted">Used by file field</em> <br />
				&nbsp ], <br />
			]; <br />
			</code> <br />

			<em class="uk-text-muted"><b>Form Options</b>. Options array that should be passed to the renderForm() method. All options are optional...</em> <br />
			<code>
			$options = [<br />
			&nbsp  "action"  => "./", <em class="uk-text-muted">where form should be submited?</em><br />
			&nbsp  "labels"  => "true", <em class="uk-text-muted">show/hide labels</em><br />
			&nbsp  "captcha" => "true", <em class="uk-text-muted">include number captcha</em><br />
			&nbsp  "submit_name" => "submit",<em class="uk-text-muted">submit button name</em><br />
			&nbsp  "submit_title" => "Submit", <em class="uk-text-muted">submit button text</em><br />
			&nbsp  "submit_style" => "primary",<em class="uk-text-muted">submit button style: default|primary|secondary</em><br />
			&nbsp  "css_class" => "", <em class="uk-text-muted">form css class</em><br />
			&nbsp  "css_id" => "my-form", <em class="uk-text-muted">form css ID</em><br />
			&nbsp  "grid_size" => "medium", <em class="uk-text-muted">grid size, space between fields: small|medium|large</em><br />
			&nbsp  "alert_type" => "swal", <em class="uk-text-muted">override module alert type setting: uikit|swal|sweetalert</em><br />
			];<br />
			</code><br />

			<em class="uk-text-muted"><b>Render Form</b>. This will just render html form, not process...</em> <br />
			<code>echo $modules->get("KreativanForms")->renderForm($fields, $options);</code><br /><br />

			<em class="uk-text-muted"><b>Send Email</b>. Send email when form is submited. This can be included before or after rendering the form...</em> <br />
			<code>
			$modules->get("KreativanForms")->sendEmail([ <br />
			&nbsp "submit_name" 			=> "submit", <em class="uk-text-muted">submit button name</em> <br />
			&nbsp "admin_email" 			=> "my_email@email.com", <em class="uk-text-muted">email address to send submissions to</em> <br />
			&nbsp "email_field" 			=> "email", <em class="uk-text-muted">email field name that will be used as "Email From"</em> <br />
			&nbsp "subject"     			=> "Email subject text...", <br />
			&nbsp "message" 					=> "Email has been sent, thanks for yout time!"), <br />
			&nbsp "redirect_url" 			=> $page->url, <em class="uk-text-muted"> redirect after form submit</em> <br />
			]);
			</code>

		';
		$f->label = "How to use";
		$about->add($f);

		$inputfields->add($about);



		// render fields
		return $inputfields;

	}

}
