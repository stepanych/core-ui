/**
 *  rating.js
 *
 *  @author Ivan Milincic <kreativan@outlook.com>
 *  @copyright 2019 kraetivan.net
 *  @link http://www.kraetivan.net
 *  @license http://www.gnu.org/licenses/gpl.html
 *
*/

/**
 *  Get Element Siblings
 *  next or prev elements
 */
function getSiblings(element, type = 'next'){
    var arraySib = [];
    if (type == 'prev'){
        while ( element = element.previousSibling ){
            arraySib.push(element);
        }
    } else if (type == 'next') {
        while ( element = element.nextSibling ){
            arraySib.push(element);
        }
    }
    return arraySib;
}


function starRating() {

    var ratings = document.querySelectorAll(".tm-select-rating > span");


    ratings.forEach(e => {

        e.addEventListener("mouseover", e => {

            // Reset active classes
            ratings.forEach(e => {
                e.classList.remove("hover");
            });

            // add avtive class on hover element
            e.target.classList.add("hover");

            // Get all sublings (pre nodes)
            var siblings = getSiblings(e.target, "prev");

            // Loop trough all the prev nodes and add active classes
            for(var i = 0; i < siblings.length; i++) {
                if(siblings[i].nodeName == "SPAN") {
                    siblings[i].classList.add("hover");
                }
            }

        });

        e.addEventListener("click", e => {

            // Reset active classes
            ratings.forEach(e => {
                e.classList.remove("active");
            });

            // add active class to the clicked element
            e.target.classList.add("active");

            // Egt all sublings (prev nodes)
            var siblings = getSiblings(e.target, "prev");

            // Loop trough all the prev nodes and add active classes
            for(var i = 0; i < siblings.length; i++) {
                if(siblings[i].nodeName == "SPAN") {
                    siblings[i].classList.add("active");
                }
            }

            // update rating input field
            var ratingValue = e.target.getAttribute("data-rating");
            var ratingInput = document.querySelector("input[name=rating]");
            ratingInput.value = ratingValue;

            // remove rating error label if exists
            var errorDiv = document.querySelector(".tm-select-rating > .uk-label-danger");
            if(errorDiv) {
                errorDiv.remove();
            }


        });
    });

}
starRating();


function validateRating(button) {

    let ratingField = document.querySelector("input[name=rating]");

    if(ratingField.hasAttribute("required")) {

        button.addEventListener("click", e => {

            var errorDiv = document.querySelector(".tm-select-rating > .uk-label-danger");

            if(ratingField.value != "") {
                // console.log("rating");
                errorDiv.remove();

            } else {
                // console.log("no rating");
                if(!errorDiv) {
                    var errorDiv = document.createElement("DIV");
                    var textnode = document.createTextNode(`${cms.lng.rating_err}`);
                    errorDiv.classList.add("rating-error", "uk-text-danger", "uk-inline");
                    errorDiv.appendChild(textnode);
                    document.querySelector(".tm-select-rating").appendChild(errorDiv);
                }

            }
        })

    }

}


function resetRating() {

    document.body.addEventListener("click", e => {
        var ratings = document.querySelectorAll(".tm-select-rating > span");
        if(!e.target.classList.contains('hover') && !e.target.classList.contains('active')) {
            ratings.forEach(e => {
                e.classList.remove("hover");
            })
        }
    })

}
resetRating();
