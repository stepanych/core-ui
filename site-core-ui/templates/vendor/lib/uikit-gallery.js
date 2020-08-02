/**
 *  Uikit Gallery
 *  Gallery using uikit lightbox component and cutom data-uk-gallery
 *  @param {string} group
 *  @example <a href="image.jpg" data-uk-gallery="my_group"></a>
 *  @example uikitGallery("my_group");
 */
function uikitGallery(group = "") {

  let selector = (group == "") ? "a[data-uk-gallery]" : `a[data-uk-gallery="${group}"]`;

  var elements = document.querySelectorAll(selector);
  var i = 0;

  elements.forEach(el => {

    var index = i++;

    el.addEventListener("click", e => {

      e.preventDefault();

      let items = [];

      for (var i = 0; i < elements.length; i++) {
        let img = elements[i].getAttribute("href");
        let imgObj = {source: img};
        items.push(imgObj);
      }

      UIkit.lightboxPanel({
        items: items,
        animation: 'scale',
      }).show(index);

    });

  });

}
