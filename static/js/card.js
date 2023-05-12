// Cancel Card
function toggleCard() {
    var overlay = document.getElementById("overlay1");
    var card = document.getElementById("profile-card");
    overlay.style.display = "block";
    card.style.display = "block";
  }

const noButton = document.getElementById("no");
const overlay = document.getElementById("overlay1");
const card = document.getElementById("profile-card");

noButton.addEventListener("click", function() {
    overlay.style.display = "none";
    card.style.display = "none";
});

/* ------------------------------------------------------------------------------------------------------- */
// Subscription Card
function toggleCard2() {
  var overlay = document.getElementById("overlay2");
  var card = document.getElementById("profile-card2");
  overlay.style.display = "block";
  card.style.display = "block";
}

const noButton2 = document.getElementById("no2");
const overlay2 = document.getElementById("overlay2");
const card2 = document.getElementById("profile-card2");

noButton2.addEventListener("click", function() {
  overlay2.style.display = "none";
  card2.style.display = "none";
});

const dropdown = document.querySelector('.dropdown');
const dropdownToggle = dropdown.querySelector('.dropdown-toggle');
const dropdownMenu = dropdown.querySelector('.dropdown-menu');

dropdownToggle.addEventListener('click', function() {
  dropdownMenu.classList.toggle('show');
});

dropdownMenu.addEventListener('click', function(event) {
  event.preventDefault();
  const target = event.target;
  if (target.matches('.dropdown-item')) {
    dropdownToggle.textContent = target.textContent;
    dropdownToggle.dataset.value = target.dataset.value;
  }
});

document.addEventListener('click', function(event) {
  const isClickInsideDropdown = dropdown.contains(event.target);
  if (!isClickInsideDropdown) {
    dropdownMenu.classList.remove('show');
  }
});


const dropdownButton = document.getElementById('dropdownMenuButton');
const expiresOnField = document.querySelector('.expires-on');
const priceField = document.querySelector('.price');

const dropdownItems = document.querySelectorAll('.dropdown-item');
dropdownItems.forEach(item => {
  item.addEventListener('click', () => {
    const selectedValue = item.getAttribute('data-value');
    var expiresOnDate;
    if (selectedValue === 'Monthly') {
      expiresOnDate = new Date(Date.now() + 30 * 24 * 60 * 60 * 1000).toISOString().slice(0, 10);
      expiresOnField.innerHTML = `Expires on <br><span style="color: #6c757d; font-weight: bold; font-size:13px;">${expiresOnDate}</span>`;
      priceField.innerHTML = 'Price <br><span style="color: #6c757d; font-weight: bold; font-size:13px;">Rs.100 per month</span>';
    } else if (selectedValue === 'Quaterly') {
      expiresOnDate = new Date(Date.now() + 3 * 30 * 24 * 60 * 60 * 1000).toISOString().slice(0, 10);
      expiresOnField.innerHTML = `Expires on <br><span style="color: #6c757d; font-weight: bold; font-size:13px;">${expiresOnDate}</span>`;
      priceField.innerHTML = 'Price <br><span style="color: #6c757d; font-weight: bold; font-size:13px;">Rs.270 per quarter</span>';
    } else if (selectedValue === 'Yearly') {
      expiresOnDate = new Date(Date.now() + 365 * 24 * 60 * 60 * 1000).toISOString().slice(0, 10);
      expiresOnField.innerHTML = `Expires on <br><span style="color: #6c757d; font-weight: bold; font-size:13px;">${expiresOnDate}</span>`;
      priceField.innerHTML = 'Price <br><span style="color: #6c757d; font-weight: bold; font-size:13px;">Rs.1000 per year</span>';
    }        
    
    const expiryDateInput = document.getElementById('expiryDate');
    expiryDateInput.value = expiresOnDate;

    const subscriptionTypeInput = document.getElementById('subscriptionType');
    subscriptionTypeInput.value = selectedValue;

    document.forms['subscription'].submit();  
  });
});

expiresOnField.textContent = 'Expires on';
priceField.textContent = 'Price';

/* ------------------------------------------------------------------------------------------------------- */
// Membership Card
function toggleCard3() {
  var overlay = document.getElementById("overlay3");
  var card = document.getElementById("profile-card3");
  overlay.style.display = "block";
  card.style.display = "block";
}

const noButton3 = document.getElementById("no3");
const overlay3 = document.getElementById("overlay3");
const card3 = document.getElementById("profile-card3");

noButton3.addEventListener("click", function() {
  overlay3.style.display = "none";
  card3.style.display = "none";
});

const dropdown2 = document.querySelector('.dropdown');
const dropdownToggle2 = dropdown2.querySelector('.dropdown-toggle');
const dropdownMenu2 = dropdown2.querySelector('.dropdown-menu');

dropdownToggle2.addEventListener('click', function() {
  dropdownMenu2.classList.toggle('show');
});

dropdownMenu2.addEventListener('click', function(event) {
  event.preventDefault();
  const target = event.target;
  if (target.matches('.dropdown-item')) {
    dropdownToggle2.textContent = target.textContent;
    dropdownToggle2.dataset.value = target.dataset.value;
  }
});

document.addEventListener('click', function(event) {
  const isClickInsideDropdown = dropdown2.contains(event.target);
  if (!isClickInsideDropdown) {
    dropdownMenu2.classList.remove('show');
  }
});


const dropdownButton2 = document.getElementById('dropdownMenuButton2');
const expiresOnField2 = document.querySelector('.features');
const priceField2 = document.querySelector('.p_price');

const dropdownItems2 = document.querySelectorAll('.dropdown-item2');
dropdownItems2.forEach(item => {
  item.addEventListener('click', () => {
    const selectedValue = item.getAttribute('data-value');
    if (selectedValue === 'Basic') {
      expiresOnField2.innerHTML = 'Features <br><span style="color: #6c757d; font-weight: bold; font-size:13px;">5% Discounts</span>';
      priceField2.innerHTML = 'Price <br><span style="color: #6c757d; font-weight: bold; font-size:13px;">Rs.300 per year</span>';
    } else if (selectedValue === 'Standard') {
      expiresOnField2.innerHTML = 'Features <br><span style="color: #6c757d; font-weight: bold; font-size:13px;">5% Discounts + VIP Coupons</span>';
      priceField2.innerHTML = 'Price <br><span style="color: #6c757d; font-weight: bold; font-size:13px;">Rs.600 per year</span>';
    } else if (selectedValue === 'Premium') {
      expiresOnField2.innerHTML = 'Features <br><span style="color: #6c757d; font-weight: bold; font-size:13px;">5% Discounts + VIP Coupons + Free Delivery</span>';
      priceField2.innerHTML = 'Price <br><span style="color: #6c757d; font-weight: bold; font-size:13px;">Rs.900 per year</span>';
    }
        
    const expiryDateInput = document.getElementById('memExpiryDate');
    expiryDateInput.value = new Date(Date.now() + 365 * 24 * 60 * 60 * 1000).toISOString().slice(0, 10);

    const membershipTypeInput = document.getElementById('membershipType');
    membershipTypeInput.value = selectedValue;

    document.forms['membership'].submit();  

  });
});

expiresOnField2.textContent = 'Features';
priceField2.textContent = 'Price';

/* ------------------------------------------------------------------------------------------------------- */
// Subscription Details Card
function toggleCard4() {
  var overlay = document.getElementById("overlay4");
  var card = document.getElementById("profile-card4");
  overlay.style.display = "block";
  card.style.display = "block";
}

const noButton4 = document.getElementById("exit");
const overlay4 = document.getElementById("overlay4");
const card4 = document.getElementById("profile-card4");

noButton4.addEventListener("click", function() {
  overlay4.style.display = "none";
  card4.style.display = "none";
});

/* ------------------------------------------------------------------------------------------------------- */
// Membership Details Card
function toggleCard5() {
  var overlay = document.getElementById("overlay5");
  var card = document.getElementById("profile-card5");
  overlay.style.display = "block";
  card.style.display = "block";
}

const noButton5 = document.getElementById("exit2");
const overlay5 = document.getElementById("overlay5");
const card5 = document.getElementById("profile-card5");

noButton5.addEventListener("click", function() {
  overlay5.style.display = "none";
  card5.style.display = "none";
});


/* ------------------------------------------------------------------------------------------------------- */
// Orders Details Card
function toggleCard6() {
  var overlay = document.getElementById("overlay6");
  var card = document.getElementById("profile-card6");
  overlay.style.display = "block";
  card.style.display = "block";
}

const noButton6 = document.getElementById("exit3");
const overlay6 = document.getElementById("overlay6");
const card6 = document.getElementById("profile-card6");

noButton6.addEventListener("click", function() {
  overlay6.style.display = "none";
  card6.style.display = "none";
});
