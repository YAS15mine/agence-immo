for (let i = 0; i < 5; i++) { 
}
const fileInput = document.getElementById("fileInput");
const icon = document.getElementById("icon");
const previewImage = document.getElementById("previewImage");
fileInput.addEventListener("change", function() {
  const file = this.files[0];
  if (file) {
    const reader = new FileReader();
    reader.addEventListener("load", function() {
      previewImage.style.display = "block";
      previewImage.setAttribute("src", this.result);
      icon.style.display = "none";
    });
    reader.readAsDataURL(file);
  } else {
    previewImage.style.display = "none";
    previewImage.setAttribute("src", "#");
    icon.style.display = "block";
  }
});
const fileInput1 = document.getElementById("fileInput1");
const icon1 = document.getElementById("icon1");
const previewImage1 = document.getElementById("previewImage1");
fileInput1.addEventListener("change", function() {
  const file1 = this.files[0];
  if (file1) {
    const reader = new FileReader();
    reader.addEventListener("load", function() {
      previewImage1.style.display = "block";
      previewImage1.setAttribute("src", this.result);
      icon1.style.display = "none";
    });
    reader.readAsDataURL(file1);
  } else {
    previewImage1.style.display = "none";
    previewImage1.setAttribute("src", "#");
    icon1.style.display = "block";
  }
});
const fileInput2 = document.getElementById("fileInput2");
const icon2 = document.getElementById("icon2");
const previewImage2 = document.getElementById("previewImage2");
fileInput2.addEventListener("change", function() {
  const file2 = this.files[0];
  if (file2) {
    const reader = new FileReader();
    reader.addEventListener("load", function() {
      previewImage2.style.display = "block";
      previewImage2.setAttribute("src", this.result);
      icon2.style.display = "none";
    });
    reader.readAsDataURL(file2);
  } else {
    previewImage2.style.display = "none";
    previewImage2.setAttribute("src", "#");
    icon2.style.display = "block";
  }
});
const fileInput3 = document.getElementById("fileInput3");
const icon3 = document.getElementById("icon3");
const previewImage3 = document.getElementById("previewImage3");
fileInput3.addEventListener("change", function() {
  const file3 = this.files[0];
  if (file3) {
    const reader = new FileReader();
    reader.addEventListener("load", function() {
      previewImage3.style.display = "block";
      previewImage3.setAttribute("src", this.result);
      icon3.style.display = "none";
    });
    reader.readAsDataURL(file3);
  } else {
    previewImage3.style.display = "none";
    previewImage3.setAttribute("src", "#");
    icon3.style.display = "block";
  }
});
const fileInput4 = document.getElementById("fileInput4");
const icon4 = document.getElementById("icon4");
const previewImage4 = document.getElementById("previewImage4");
fileInput4.addEventListener("change", function() {
  const file4 = this.files[0];
  if (file4) {
    const reader = new FileReader();
    reader.addEventListener("load", function() {
      previewImage4.style.display = "block";
      previewImage4.setAttribute("src", this.result);
      icon4.style.display = "none";
    });
    reader.readAsDataURL(file4);
  } else {
    previewImage4.style.display = "none";
    previewImage4.setAttribute("src", "#");
    icon4.style.display = "block";
  }
});
