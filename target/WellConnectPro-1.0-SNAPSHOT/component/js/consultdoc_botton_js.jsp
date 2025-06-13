<%-- 
    Document   : consultdoc_botton_js
    Created on : Apr 25, 2025, 1:18:52 PM
    Author     : sumitkumarsoni
--%>
<script>
  // Wait till DOM loads
  document.addEventListener("DOMContentLoaded", () => {
    const nameInput = document.getElementById("patient-name");
    const mobileInput = document.getElementById("mobile-number");
    const continueButton = document.querySelector("button");
    const continueLink = continueButton.querySelector("a");

    // Initially disable the button
    continueButton.disabled = true;
    continueButton.classList.add("opacity-50", "cursor-not-allowed");
    continueLink.classList.add("pointer-events-none");

    // Validation check
    function validateForm() {
      const nameFilled = nameInput.value.trim().length > 0;
      const mobileFilled = /^[0-9]{10}$/.test(mobileInput.value.trim());

      if (nameFilled && mobileFilled) {
        continueButton.disabled = false;
        continueButton.classList.remove("opacity-50", "cursor-not-allowed");
        continueLink.classList.remove("pointer-events-none");
      } else {
        continueButton.disabled = true;
        continueButton.classList.add("opacity-50", "cursor-not-allowed");
        continueLink.classList.add("pointer-events-none");
      }
    }

    // Run validation on input
    nameInput.addEventListener("input", validateForm);
    mobileInput.addEventListener("input", validateForm);
  });
</script>
