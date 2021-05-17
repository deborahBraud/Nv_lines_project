function Func() {
  var input, filter, a;

  // take user input
  input = document.getElementById("userInput");
  
  // convert the input to upper case letter for easy comparison
  filter = input.value.toUpperCase();

  div = document.getElementById("Dropdown");

  // get all the options as a list
  a = div.getElementsByTagName("option");

  // iterate through the entire list and output relevant results if found
  for (var i = 0; i < a.length; i++) {
    txtValue = a[i].textContent || a[i].innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      a[i].style.display = "";
    } else {
      a[i].style.display = "none";
    }
  }
}
