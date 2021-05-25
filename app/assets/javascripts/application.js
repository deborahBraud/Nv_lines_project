//= require jquery
//= require select2
//= require jquery_ujs
//= require cocoon


const map = {
    0: 'physics url'
 ,1: 'maths url'
 ,2: 'chemistry url'
}
document.getElementById('submit').addEventListener('click', () =>
  location.href = map[document.getElementById('select').value])




$("#basics").easyAutocomplete(options);


function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

function filterFunction() {
  var input, filter, ul, li, a, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  div = document.getElementById("myDropdown");
  a = div.getElementsByTagName("a");
  for (i = 0; i < a.length; i++) {
    txtValue = a[i].textContent || a[i].innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      a[i].style.display = "";
    } else {
      a[i].style.display = "none";
    }
  }
} 


class addFields {
  // This executes when the function is instantiated.
  constructor() {
    this.links = document.querySelectorAll('.add_fields')
    this.iterateLinks()
  }

  iterateLinks() {
    // If there are no links on the page, stop the function from executing.
    if (this.links.length === 0) return
    // Loop over each link on the page. A page could have multiple nested forms.
    this.links.forEach(link => {
      link.addEventListener('click', e => {
        this.handleClick(link, e)
      })
    })
  }

  handleClick(link, e) {
    // Stop the function from executing if a link or event were not passed into the function.
    if (!link || !e) return
    // Prevent the browser from following the URL.
    e.preventDefault()
    // Save a unique timestamp to ensure the key of the associated array is unique.
    let time = new Date().getTime()
    // Save the data id attribute into a variable. This corresponds to `new_object.object_id`.
    let linkId = link.dataset.id
    // Create a new regular expression needed to find any instance of the `new_object.object_id` used in the fields data attribute if there's a value in `linkId`.
    let regexp = linkId ? new RegExp(linkId, 'g') : null
    // Replace all instances of the `new_object.object_id` with `time`, and save markup into a variable if there's a value in `regexp`.
    let newFields = regexp ? link.dataset.fields.replace(regexp, time) : null
    // Add the new markup to the form if there are fields to add.
    newFields ? link.insertAdjacentHTML('beforebegin', newFields) : null
  }
}

// Wait for turbolinks to load, otherwise `document.querySelectorAll()` won't work
window.addEventListener('turbolinks:load', () => new addFields())

// app/javascript/packs/nested-forms/removeFields.js
class removeFields {
  // This executes when the function is instantiated.
  constructor() {
    this.iterateLinks()
  }

  iterateLinks() {
    // Use event delegation to ensure any fields added after the page loads are captured.
    document.addEventListener('click', e => {
      if (e.target && e.target.className == 'remove_fields') {
        this.handleClick(e.target, e)
      }
    })
  }

  handleClick(link, e) {
    // Stop the function from executing if a link or event were not passed into the function.
    if (!link || !e) return
    // Prevent the browser from following the URL.
    e.preventDefault()
    // Find the parent wrapper for the set of nested fields.
    let fieldParent = link.closest('.nested-fields')
    // If there is a parent wrapper, find the hidden delete field.
    let deleteField = fieldParent
      ? fieldParent.querySelector('input[type="hidden"]')
      : null
    // If there is a delete field, update the value to `1` and hide the corresponding nested fields.
    if (deleteField) {
      deleteField.value = 1
      fieldParent.style.display = 'none'
    }
  }
}

// Wait for turbolinks to load, otherwise `document.querySelectorAll()` won't work
window.addEventListener('turbolinks:load', () => new removeFields())

/ app/javascript/packs/application.js
require('./nested-forms/addFields')
require('./nested-forms/removeFields')



