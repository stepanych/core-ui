// console.log(ProcessWire.config.socialIcons);

//
// Repeater
//

window.addEventListener("DOMContentLoaded", function() {

	let button = document.getElementById("repeater-button");

	button.addEventListener("click", e => {
  	e.preventDefault();

    let socialIcons = ProcessWire.config.socialIcons;


	  let fields = [
	    {
	      type: "select",
	      name: "social_icons[]",
	      options: socialIcons,
	      placeholder: "Select Icon",
	      default: "2",
        grid: "medium@m",
        required: true
	    },
      {
	      type: "text",
	      name: "social_links[]",
	      placeholder: "https://",
        grid: "expand@m",
        required: true
	    }
	  ];

	  let container = document.getElementById("social-links-repeater");
	  addRow(container, fields, true);

  });
});


function deleteRow(dataRow) {
  event.preventDefault();
  if(dataRow) {
    let row = document.querySelector(`[data-row='${dataRow}']`);
    console.log(dataRow);
    row.remove();
  }
}
