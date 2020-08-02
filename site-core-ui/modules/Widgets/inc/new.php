<?php
/**
 *  new.php
 *
 *  @author Ivan Milincic <kreativan@outlook.com>
 *  @copyright 2018 Kreativan
 *
 *
*/

$widgets_by_tag = $this->templates->find("tags^=Widget|Widgets|-Widget|-Widgets");

if($this->input->get->template) {

  $this_template = $this->templates->get($this->input->get->template);
  $template_name = !empty($this_template->label) ? $this_template->label : $this_template->name;

  // Build form
  $form = $this->modules->get("InputfieldForm");
  $form->action = "./";
  $form->method = "post";
  $form->attr("id+name","create_new");

  // template
  $f = $this->modules->get("InputfieldRadios");
  $f->attr('name', 'template');
  $f->attr('class', 'uk-hidden');
  $f->attr('required', '1');
  $f->label = "New Widget";
  $f->options = ["$this_template" => "$template_name"];
  $f->defaultValue = $this_template;
  $form->append($f);

  // title
  $f = $this->modules->get("InputfieldText");
  $f->attr('name', 'title');
  $f->attr('required', '');
  $f->label = 'Title';
  $f->required = true;
  $form->append($f);

  // Submit
  $submit = $this->modules->get("InputfieldSubmit");
  $submit->attr("value","Save");
  $submit->attr("id+name","create_new");
  $submit->attr("class","ui-button uk-margin-left");
  $form->append($submit);

  echo $form->render();

}

// Get all widgets tags in an array
$widgets_tags = [];
foreach($widgets_by_tag as $t) {
  if(!in_array($t->tags, $widgets_tags)) $widgets_tags[] = str_replace("-", "", $t->tags);
}
$widgets_tags = array_unique($widgets_tags);
//$widgets_tags = array_reverse($widgets_tags);

$i = 0;
?>

<?php if(!$this->input->get->template) :?>
<div class="ivm-bg-white ivm-border uk-margin">
  <?php foreach($widgets_tags as $tag) :?>

    <?php
      $this_widgets = $this->templates->find("tags=$tag|-$tag, sort=title");
    ?>

    <h3>
      <?php
        $title = str_replace("Widgets", "", $tag);
        $title = str_replace("Widget", "", $title);
        $title = str_replace("_", "", $title);
        // echo ($title != "") ? $title : "Core";
      ?>
    </h3>

    <ul class="uk-child-width-1-6@xl uk-child-width-1-5@l uk-child-width-1-3@s uk-text-center uk-grid-small" uk-grid>
      <?php foreach($this_widgets as $t) :?>
        <?php
          // number of existing widgets
          $numb = $t->getNumPages();
          $numb = ($numb > 0) ? $t->getNumPages() : '';
        ?>
        <li>
          <div class="ivm-box ivm-border uk-padding uk-position-relative">
            <div class="uk-margin-remove">
              <?php if(!empty($t->geticon())) :?>
                <i class="fa fa-<?=$t->geticon() ?>"></i>
              <?php endif;?>
              <?= !empty($t->label) ? $t->label : $t->name; ?>
            </div>
            <span class="uk-position-top-right" style="right: 10px;top:5px;"><?= $numb ?></span>
            <a class="uk-position-cover" href="./new?template=<?= $t->name ?>"></a>
          </div>
        </li>
      <?php endforeach; ?>
    </ul>

  <?php endforeach;?>
</div>
<?php endif;?>


<style>
.ivm-box {
  border-radius: 3px;
  transition: box-shadow 0.2s ease;
  background: #f0f3f7;
  border:1px solid #dee4eb;
}
.ivm-box:hover {
  box-shadow: 3px 5px 25px rgba(0, 0, 0, 0.1);
}
</style>
