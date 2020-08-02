<?php
/**
 *  Toolbar
 *
 *
 */

$sorting_options = array(
    '-created' => 'Latest',
    'created' => 'Oldest',
    '-modified' => 'Modified',
    '-comments.count' => 'Comments',
    'title' => 'A-Z',
    '-title' => 'Z-A'
);

// status options
$status_options = array(
  'active' => 'Active',
  //'hidden' => 'Hidden',
  'unpublished' => 'Unpublished',
  //'trash' => 'Trashed'
);

$onPagesArr = $this->pages->find("matrix.select_widget!=''");

$widgets_by_tag = $this->templates->find("tags^=Widget|Widgets|-Widget|-Widgets");

?>

<div class="uk-padding-small ivm-border-bottom uk-background-muted uk-margin-top">
    <form action="./" method="GET">
        <div class="uk-grid-small" uk-grid>

            <div class="uk-width-medium@m">
                <select class="uk-select" name="p" onchange="this.form.submit()" <?= $this->input->get->type ? "disabled" : "" ?>>
                    <option value="">- Page -</option>
                    <?php foreach($onPagesArr as $item) :?>
                        <option value="<?= $item->id ?>" <?= ($this->input->get->p == $item->id) ? "selected" : "" ?>>
                            <?= $item->title ?>
                        </option>
                    <?php endforeach?>
                </select>
            </div>

            <div class="uk-width-medium@m">
                <select class="uk-select" name="type" onchange="this.form.submit()" <?= $this->input->get->p ? "disabled" : "" ?>>
                    <option value="">- Type -</option>
                    <?php foreach($widgets_by_tag as $item) :?>
                        <option value="<?= $item->name ?>" <?= ($this->input->get->type == $item->name) ? "selected" : "" ?>>
                            <?= !empty($item->label) ? $item->label : $item->name; ?>
                        </option>
                    <?php endforeach?>
                </select>
            </div>

            <div class="uk-width-expand@m">
                <input class="uk-input" type="text" name="q" placeholder="Search..." value="<?= $this->input->get->q ?>" />
            </div>

            <div class="uk-width-auto@m">
                <select class="uk-select" name="status" onchange="this.form.submit()">
                    <option value="">- Select Status -</option>
                    <?php foreach($status_options as $value => $label) :?>
                        <option value="<?= $value ?>" <?= ($this->input->get->status == $value) ? "selected" : "" ?>>
                            <?= $label ?>
                        </option>
                    <?php endforeach?>
                </select>
            </div>

        </div>
    </form>
</div>
