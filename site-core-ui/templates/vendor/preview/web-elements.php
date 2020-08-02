<?php namespace ProcessWire;
render("vendor/preview/modal-example.php");
render("vendor/preview/offcanvas-example.php");

?>

<title>Web Elements</title>

<div class="uk-heading-line uk-h4 uk-text-bold uk-margin-remove-top">
  <span>Headings</span>
</div>

<div class="uk-margin">
  <span class="uk-h1 uk-margin-right">h1 heading 1</span>
  <span class="uk-h2 uk-margin-right">h2 heading 2</span>
  <span class="uk-h3 uk-margin-right">h3 heading 3</span>
  <span class="uk-h4 uk-margin-right">h4 heading 4</span>
  <span class="uk-h5 uk-margin-right">h5 heading 5</span>
  <span class="uk-h6 uk-margin-right">h6 heading 6</span>
</div>

<div class="uk-margin">
  <div class="uk-h1">The quick brown fox jumps over the lazy dog</div>
</div>

<div class="uk-heading-line uk-h4 uk-text-bold">
  <span>Typography</span>
</div>

<p class="uk-text-large">
  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
</p>

<p class="uk-text-small">
  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
</p>

<p>Lorem ipsum, dolor sit amet <strong>adipisicing</strong> adipisicing elit. <em>Magnam alias ipsum</em>, fugiat omnis ab <a href="#">voluptatum</a> sunt rerum dicta inventore expedita eligendi dignissimos! Animi <b>cumque tempore</b> quaerat saepe eum rerum quisquam.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sapien velit, aliquet eget commodo nec, auctor a sapien. Nam eu neque vulputate diam rhoncus faucibus. Curabitur quis varius libero.</p>

<p class="uk-text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sapien velit, aliquet eget commodo nec, auctor a sapien. Nam eu neque vulputate diam rhoncus faucibus. Curabitur quis varius libero.</p>

<blockquote>
  Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta quaerat ratione consectetur, nemo expedita distinctio quasi sint magnam beatae quae qui reprehenderit itaque autem eos repellat nam tempora, error dolorum?
</blockquote>

<div class="uk-heading-line uk-h4 uk-text-bold">
  <span>Buttons</span>
</div>

<div class="uk-margin-medium-top">
  <a class="uk-button uk-button-default" href="#">Default</a>
  <a class="uk-button uk-button-primary" href="#">Primary</a>
  <a class="uk-button uk-button-secondary" href="#">Secondary</a>
  <a class="uk-button uk-button-success" href="#">Success</a>
  <a class="uk-button uk-button-danger" href="#">Danger</a>
  <a class="uk-button uk-button-text" href="#">Text</a>
  <a class="uk-button uk-button-link" href="#">Link</a>
</div>

<div class="uk-margin">
  <a class="uk-button uk-button-primary uk-button-large" href="#">Button Large</a>
  <a class="uk-button uk-button-secondary uk-button-large" href="#">Button Large</a>
  <a class="uk-button uk-button-primary uk-button-small" href="#">Small</a>
  <a class="uk-button uk-button-secondary uk-button-small" href="#">Small</a>
</div>

<div class="uk-heading-line uk-h4 uk-text-bold">
  <span>Modal & Offcanvas</span>
</div>

<div class="uk-margin">
  <a class="uk-button uk-button-default" href="#modal-test" uk-toggle>Modal</a>
  <a class="uk-button uk-button-default" href="#"
    onclick="modalAlert('Modal Alert', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.')">
    Modal Alert
  </a>
  <a class="uk-button uk-button-default" href="#"
    onclick="modalPrompt('Email:', 'example@email.com', modalPromptExampleFunction)">
    Modal Prompt
  </a>
  <a class="uk-button uk-button-default" href="<?= $page->url ?>"
    onclick="modalConfirm('Are you sure?', 'This will redirect you to the same link')">
    Modal Confirm
  </a>
</div>
<div class="uk-margin">
  <a class="uk-button uk-button-default" href="#offcanvas-test" uk-toggle>Off-canvas</a>
  <button class="uk-button uk-button-default" type="button"
    onclick="notification('success', 'Notification...')">
    Notification
  </button>
</div>

<div class="uk-heading-line uk-h4 uk-text-bold">
  <span>Table</span>
</div>

<div class="uk-margin-medium-top">
  <div class="uk-overflow-auto">
    <table class="uk-table uk-table-middle uk-table-small uk-table-striped">
      <caption>UIkit Table</caption>
      <thead>
        <tr>
          <th>Heading</th>
          <th>Heading</th>
          <th>Heading</th>
        </tr>
      </thead>
      <tbody>
        <tr>
            <td>Data 1</td>
            <td>Data 2</td>
            <td>Data 3</td>
        </tr>
        <tr>
          <td>Data 1</td>
          <td>Data 2</td>
          <td>Data 3</td>
        </tr>
        <tr>
            <td>Data 1</td>
            <td>Data 2</td>
            <td>Data 3</td>
        </tr>
      </tbody>
      <tfoot>
          <tr>
              <td>Footer</td>
              <td>Footer</td>
              <td>Footer</td>
          </tr>
      </tfoot>
    </table>

    <table>
      <caption>Default Table</caption>
      <tbody>
        <tr>
          <td>Data 1</td>
          <td>Data 2</td>
          <td>Data 3</td>
        </tr>
        <tr>
          <td>Data 1</td>
            <td>Data 2</td>
          <td>Data 3</td>
        </tr>
        <tr>
          <td>Data 1</td>
          <td>Data 2</td>
          <td>Data 3</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>

<div class="uk-heading-line uk-h4 uk-text-bold">
  <span>Colors</span>
</div>

<div class="uk-grid uk-grid-small uk-child-width-expand@m" uk-grid>
  <div>
    <div class="uk-section-primary uk-light uk-padding-small uk-text-center">
      Primary
    </div>
  </div>
  <div>
    <div class="uk-section-secondary uk-light uk-padding-small uk-text-center">
      Secondary
    </div>
  </div>
  <div>
    <div class="uk-section-muted uk-padding-small uk-text-center">
      Muted
    </div>
  </div>
  <div>
    <div class="tm-bg-dark uk-light uk-padding-small uk-text-center">
      Dark
    </div>
  </div>
</div>

<div class="uk-grid uk-grid-small uk-child-width-expand@m" uk-grid>
  <div>
    <div class="tm-bg-success uk-light uk-padding-small uk-text-center">
      Success
    </div>
  </div>
  <div>
    <div class="tm-bg-warning uk-light uk-padding-small uk-text-center">
      Warning
    </div>
  </div>
  <div>
    <div class="tm-bg-danger uk-light uk-padding-small uk-text-center">
      Danger
    </div>
  </div>
</div>

<div class="uk-heading-line uk-h4 uk-text-bold">
  <span>Alert</span>
</div>

<div class="uk-margin-medium">
  <div class="uk-alert-primary" uk-alert>
    <a class="uk-alert-close" uk-close></a>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
  </div>

  <div class="uk-alert-success" uk-alert>
    <a class="uk-alert-close" uk-close></a>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
  </div>

  <div class="uk-alert-warning" uk-alert>
    <a class="uk-alert-close" uk-close></a>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
  </div>

  <div class="uk-alert-danger" uk-alert>
    <a class="uk-alert-close" uk-close></a>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
  </div>
</div>

<div class="uk-heading-line uk-h4 uk-text-bold">
  <span>Shadows</span>
</div>

<div class="uk-grid uk-child-width-expand@m uk-margin-medium-top uk-text-center" uk-grid>
  <div>
    <div class="uk-panel uk-box-shadow-small uk-padding-large tm-border-radius">
      <h4>Box Shadow Small</h4>
    </div>
  </div>
  <div>
    <div class="uk-panel uk-box-shadow-medium uk-padding-large tm-border-radius">
      <h4>Box Shadow Medium</h4>
    </div>
  </div>
  <div>
    <div class="uk-panel uk-box-shadow-large uk-padding-large tm-border-radius">
      <h4>Box Shadow large</h4>
    </div>
  </div>
  <div>
    <div class="uk-panel uk-box-shadow-xlarge uk-padding-large tm-border-radius">
      <h4>Box Shadow xLarge</h4>
    </div>
  </div>
</div>

<div class="uk-heading-line uk-h4 uk-text-bold">
  <span>Cards</span>
</div>

<div class="uk-grid uk-child-width-expand@s uk-grid-match uk-margin-medium" uk-grid>
  <div>
    <div class="uk-card uk-card-default uk-card-hover">
      <div class="uk-card-body">
        <h3 class="uk-card-title">Title</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      </div>
    </div>
  </div>
  <div>
    <div class="uk-card uk-card-primary uk-card-hover">
      <div class="uk-card-body">
        <h3 class="uk-card-title">Title</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...<a href="#">Read More</a></p>
      </div>
    </div>
  </div>
  <div>
    <div class="uk-card uk-card-secondary uk-card-hover">
      <div class="uk-card-body">
        <h3 class="uk-card-title">Title</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...<a href="#">Read More</a></p>
      </div>
    </div>
  </div>
</div>

<script>
function modalPromptExampleFunction(data) {
  alert(data);
}
</script>
