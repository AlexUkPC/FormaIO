function show() {
  document.getElementById("tc_text").style.display="none"
  document.getElementById("tc").style.display="none"
  document.getElementById("tc_label").style.display="none"
  document.getElementById("formular").style.display="block"
}

document.addEventListener("DOMContentLoaded", () => {
  const tc = document.getElementById("tc")
  if (tc.checked==true){
    show()
  }
  document.addEventListener("click", (e) => {
      if (e.target) {
        const tc = document.getElementById("tc")
        if (tc.checked==true){
          show()
        }

      }
    })
  
})