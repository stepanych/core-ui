<?php
$helper = $this->modules->get("KreativanHelper");
$settings = $this->modules->get("KreativanSettings");

/* ----------------------------------------------------------------
  Site (main)
------------------------------------------------------------------- */
if($this->input->post->submit_site || $this->input->post->save_main) {

  // Logos & favicons
  $this->upload_media("logo", $this->cmsPath, "logo");
  $this->upload_media("logo_mobile", $this->cmsPath, "logo-mobile");
  $this->upload_media("logo_footer", $this->cmsPath, "logo-footer");
  $this->upload_media("favicon_16", $this->cmsPath, "favicon-16x16");
  $this->upload_media("favicon_32", $this->cmsPath, "favicon-32x32");
  $this->upload_media("favicon_apple", $this->cmsPath, "apple-touch-icon");

  // Main Site Info Array
  $site_arr = [
    "title" => $this->sanitizer->text($this->input->post->title),
    "about" => $this->sanitizer->text($this->input->post->about),
    "website" => $this->sanitizer->text($this->input->post->website),
    "phone" => $this->sanitizer->text($this->input->post->phone),
    "email" => $this->sanitizer->email($this->input->post->email),
    "address" => $this->sanitizer->text($this->input->post->address),
    "meta" => $this->sanitizer->text($this->input->post->meta),
    "logo" => $this->logo(),
    "logo_mobile" => $this->logoMobile(),
    "logo_footer" => $this->logoFooter(),
  ];

  // multilanguage
  // check each $site_arr field for lang variant
  // Eg: about__1074
  if(!empty($this->languages) && count($this->languages) > 0) {
    foreach($site_arr as $key => $value) {
      foreach ($this->languages as $lng) {
        $field_name = "{$key}__{$lng->id}";
        $field_value = $this->input->post->{$field_name};
        if($lng->name != "default" && $field_value) {
          $site_arr[$field_name] = $this->sanitizer->textarea($field_value);
        }
      }
    }
  }

  // lets create and save site.json
  $site_json = json_encode($site_arr);
  $this->files->filePutContents($this->cmsPath."site-info.json", $site_json);

  $this->message("Site setting saved");

  $this->session->redirect("{$this->page->url}{$this->input->urlSegment1}");

}


/* ----------------------------------------------------------------
  Options
------------------------------------------------------------------- */
if($this->input->post->submit_options || $this->input->save_options) {

  // hide_system_pages
  if($this->input->post->hide_system_pages) {
    $hide_system_pages = $this->sanitizer->text($this->input->post->hide_system_pages);
    $helper->saveModule("KreativanHelper", ["hide_system_pages" => $hide_system_pages]);
  }

  // hide / show development page
  $dev_page = $this->pages->get("/admin/development/");
  if($this->input->post->hide_system_pages == "1") {
    $dev_page->of(false);
    $dev_page->status('unpublished');
    $dev_page->save();
    $dev_page->of(true);
  } else {
    $dev_page->of(false);
    $dev_page->removeStatus('unpublished');
    $dev_page->save();
    $dev_page->of(true);
  }

  // Settings
  $settings_data = [
    "default_lang" =>  $this->sanitizer->text($this->input->post->default_lang),
  ];
  $helper->saveModule("KreativanSettings", $settings_data);

  // Google Maps Api
  $googleApiKey = $this->sanitizer->text($this->input->post->googleApiKey);
  $helper->saveModule("FieldtypeMapMarker", ["googleApiKey" => $googleApiKey]);

  $this->message("Options saved");

  $this->session->redirect("{$this->page->url}{$this->input->urlSegment1}");

}

/* ----------------------------------------------------------------
  Scripts
------------------------------------------------------------------- */
if($this->input->post->submit_scripts|| $this->input->save_scripts) {

  $data = [
    "scripts_in_head" => $this->input->post->scripts_in_head,
    "scripts_in_body" => $this->input->post->scripts_in_body,
    "scripts_in_footer" => $this->input->post->scripts_in_footer,
  ];
  $helper->saveModule("KreativanSettings", $data);

  $this->session->redirect("{$this->page->url}{$this->input->urlSegment1}");

}
