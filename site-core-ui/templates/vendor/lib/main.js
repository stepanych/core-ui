window.addEventListener("DOMContentLoaded", () => {
  setActiveParent();
  scrollToTop();
  ukToggleAttr();
});

// Set active classes for element parents
function setActiveParent() {
  var classes = ".uk-navbar-dropdown-nav > li.uk-active, .uk-nav-sub > li.uk-active";
  var active = document.querySelectorAll(classes);
  if (active != null) {
    active.forEach(e => {
      var parent = e.closest("li.uk-parent");
      parent.classList.add("uk-active");
      parent.classList.add("uk-open");
    });
  }
}

// Scroll To Top
function scrollToTop() {
  let toTop = document.querySelector(".uk-totop");
  // console.log(toTop);
  if(toTop) {
    window.addEventListener("scroll", function() {
      if(window.scrollY > 300) {
        toTop.classList.add('uk-active', "uk-animation-slide-bottom");
      } else {
        toTop.classList.remove('uk-active');
      }
    });
  }
}

/**
 *  Add uk-toggle attribute to all elemets with .tm-toggle class
 *  Using this to invoke modals and offcanvas with uk-toggle attr
 *
 */
function ukToggleAttr() {
  let tmToggleElements = document.querySelectorAll(".tm-toggle");
  if(tmToggleElements.length > 0) {
    tmToggleElements.forEach(function(e) {
      e.setAttribute("uk-toggle", "");
    });
  }
}


/**
 *  Display modal confirm (UIkit)
 *  It's just gonna prompt you "are you sure" and redirect to the href url
 *  @example <a href="#" onclick="modalConfirm('Are you Sure?', 'My custom text here')">Example</a>
 *  @param {string} q
 *  @param {string} txt
 *
 */
function modalConfirm(q, txt) {

  event.preventDefault();
  var e = event.target;
  e = event.target.getAttribute("href") ? event.target : event.target.parentNode;
  let href = e.getAttribute('href');
  let question = (q != null) ? q : "Are you sure?";
  let heading = `<div class="tm-modal-confirm-title uk-h2 uk-text-center uk-margin-remove">${question}</div>`;
  let text = txt != null ? `<div class="tm-modal-confirm-text uk-text-center uk-margin-small-top">${txt}</div>` : "";

  UIkit.modal.confirm(heading+text).then(function () {
    window.location.replace(href);
    }, function () {
    // console.log('Rejected.')
  });

}

/**
 *  Modal Alert
 *  @example onclick="modalAlert('Modal Alert!')"
 *  @param {string} text
 *  @param {string} css_class
 */
function modalAlert(title, text = "", css_class = "") {
  event.preventDefault();
  text = (text != "" && text != null) ? `<p class='uk-text-center uk-margin-small uk-margin-remove-bottom'>${text}</p>` : "";
  title = (title && title != "") ? `<div class='uk-h2 uk-margin-remove'>${title}</div>` : "";
  UIkit.modal.alert(`<div class='modal-alert-content uk-text-center ${css_class}'>${title}${text}</div>`);
}

/**
 *  Modal Prompt
 *  Prompt user for input and run passed function
 *  @param {string} label - input field label
 *  @param {string} value - input field value
 *  @param {function} func - name of the function that will run on OK click
 *  @example onclick="modalPrompt('Name:', 'Kreativan', myFunction)"
 */
function modalPrompt(label, value, func) {
  event.preventDefault();
  UIkit.modal.prompt(label, value).then(function(data) {
    if(data && (typeof func === 'function')) {
      func(data);
    }
  })
}

// Display uikit notification
function notification(status, message, pos = "top-center", timeout = "3000") {
  event.preventDefault();
  UIkit.notification({status: status, message: message, pos: pos, timeout: timeout})
}

/**
 *  Tab navigation using select
 *  Used for switching tabs on small screens
 *	use it on select element as onchnage="uikitTabSelect('.uk-tab')"
 *	@param {string} - uk-tab element css selector
 */
function uikitTabSelect(tab_element) {
  event.preventDefault();
  let index = event.target.value;
  let element = document.querySelector(tab_element);
  UIkit.tab(element).show(index);
}
