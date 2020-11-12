
// Curried function
const makeAnimalList = templater(o=>`
	<div class="animallist-item js-animal-jump" data-id="${o.id}"">
		<div class="animallist-icon">
			<img src="${o.img}" alt="">
		</div>
		<div class="animallist-description">
			<div class="animallist-name">${o.name}</div>
			<div class="animallist-breed"><strong>Breed</strong> ${o.breed}</div>
			<div class="animallist-color"><strong>Color</strong> ${o.color}</div>
		</div>
	</div>
	`);


const makeUserProfile = templater(o=>`
	<div class="user-profile-image">
		<img src="${o.img}" alt="">
	</div>
	<h2>${o.name}</h2>
	<h3>@${o.username}</h3>
	<div><a href="#user-profile-edit-page">Edit Profile</a></div>
	<div><a href="#user-password-edit-page">Change Password</a></div>
	<div><a href="#" class="js-logout">Logout</a></div>
	`);
			


const makeAnimalProfile = templater(o=>`
   <div class="animal-profile-image">
      <img src="${o.img}" alt="">
   </div>
   <h2>${o.name}</h2>
   `);