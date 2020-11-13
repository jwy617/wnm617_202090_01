
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
	<div class="user-profile-image display-flex flex-justify-center">
		<img src="${o.img}" alt="">
	</div>
	<h2>${o.name}</h2>
	<h3>@${o.username}</h3>
	<div><a href="#user-profile-edit-page">Edit Profile</a></div>
	<div><a href="#user-password-edit-page">Change Password</a></div>
	<div><a href="#" class="js-logout">Logout</a></div>
	`);
			


const makeAnimalProfile = templater(o=>`
	<div class="animal-profile-image display-flex flex-justify-center">
		<img src="${o.img}" alt="">
	</div>
	<div class="animallist-name">${o.name}</div>
	<div class="animallist-breed"><strong>Breed</strong> ${o.breed}</div>
	<div class="animallist-color"><strong>Color</strong> ${o.size}</div>
	<div class="animallist-color"><strong>Color</strong> ${o.color}</div>
	`);



const makeAnimalPopup = o => `
	<div class="display-flex animal-popup" style="flex-wrap:wrap">
		<div class="flex-none">
			<div class="animal-image">
				<img src="${o.img}" alt="">
			</div>
		</div>
		<div class="flex-none animal-popup-description">
			<h2>${o.name}</h2>
			<div>${o.breed}</div>
		</div>
		<div class="form-button js-animal-jump" data-id="${o.animal_id}" style="width:100%">Visit</div>
	</div>
	`;



const FormControl = ({namespace,name,displayname,type,placeholder,value}) => {
	return `<div class="form-control">
	<label for="${namespace}-${name}" class="form-label">${displayname}</label>
	<input id="${namespace}-${name}" type="${type}" class="form-input" data-role="none" placeholder="${placeholder}" value="${value}">
	</div>`;
}



const makeUserProfileUpdateForm = o => `
${FormControl({
   namespace:'user-edit',
   name:'username',
   displayname:'Username',
   type:'text',
   placeholder:'Type your user name',
   value:o.username
})}
${FormControl({
   namespace:'user-edit',
   name:'name',
   displayname:'Name',
   type:'text',
   placeholder:'Type your full name',
   value:o.name
})}
${FormControl({
   namespace:'user-edit',
   name:'email',
   displayname:'Email',
   type:'text',
   placeholder:'Type your email',
   value:o.email
})}
`;




// 	<div class="user-profile-image display-flex flex-justify-center">
// 		<img src="img/avatar_expample_2.png" alt="avatar" >
// 	</div>
// 	<div class="form-control">
// 		<button data-role="none" class="form-button" style="background-color: var(--color-neutral-mediumer); color: var(--color-main-medium)"><a href="#">Click here to change the photo</a></button>
// 	</div>
// 	<div class="form-control">
// 		<label for="user-profile-name" class="form-label">Name</label>
// 		<input id="user-profile-name" type="text" class="form-input" data-role="none" placeholder="Type your name" value="Ellie Miles">
// 	</div>
// 	<div class="form-control">
// 		<label for="user-profile-nickname" class="form-label">Nickname</label>
// 		<input id="user-profile-nickname" type="text" class="form-input" data-role="none" placeholder="Type your nickname" value="Doggie lover">
// 	</div>
// 	<div class="form-control">
// 		<label for="user-profile-email" class="form-label">Email</label>
// 		<input id="user-profile-email" type="text" class="form-input" data-role="none" placeholder="Type your email" value="elliemiles@email.com">
// 	</div>
// 	<div class="form-control">
// 		<label for="user-profile-notes" class="form-label">Notes</label>
// 		<textarea id="user-profile-notes" type="text" class="form-input" data-role="none" rows="3" cols="50">Dogs keep us happy and healthy:) They are good for my heart and soul. Positive feelings, increased activity, and affection are the building blocks of a happy and healthy life.</textarea>
// 	</div>
// 	<div class="form-control">
// 		<a href="#user-profile-page">
// 			<button data-role="none" class="form-button">Save</button>
// 		</a>
// 	</div>

