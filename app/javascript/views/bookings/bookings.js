

const handleBookingStatus = () => {
  // console.log("Calling bookings js")
  let checkedValue = document.getElementById('choice');
  let pupil = document.getElementById("pupil");
  let grandmaster = document.getElementById("grandmaster");

  window.addEventListener("load", function(event) {
    grandmaster.style.display = "none";
    pupil.style.display = "block";
  });

  checkedValue.addEventListener("change", (e) => {
    // console.log(checkedValue.checked);
    if (checkedValue.checked === false) {
      grandmaster.style.display = "none";
      pupil.style.display = "block";
    } else {
      // console.log(pupil);
      pupil.style.display = "none";
      grandmaster.style.display = "block";
    }
  })
}

// document.querySelector('.messageCheckbox:checked').value;
export { handleBookingStatus }
