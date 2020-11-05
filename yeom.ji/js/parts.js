
// Curried function
const makeAnimalList = templater(o=>`
	<div class="animallist-item">
		<div class="animallist-icon">
			<img src="${o.img}" alt="">
		</div>
		<div class="animallist-description">
			<div class="animallist-name">${o.name}</div>
			<div class="animallist-breed style="padding-top: 0.5em"><strong>Breed</strong> ${o.breed}</div>
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
	`);