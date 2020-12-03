
// Curried function
const makeAnimalList = templater(o=>`
	<div class="animallist-item js-animal-jump" data-id="${o.id}"">
		<div class="animallist-icon">
			<img src="${o.img}" alt="">
		</div>
		<div class="animallist-description">
			<div class="animallist-name">${o.name}</div>
			<div class="animallist-breed">${o.breed}</div>
		</div>
	</div>
	`);


const makeUserProfile = templater(o=>`
	<div class="profile-containter">
		<div class="user-profile-image">
			<img src="${o.img}" alt="">
		</div>
		<h2 style="margin:0">${o.name}</h2>
		<div style="margin:1em">@${o.username}</div>
	</div>
	`);
			
			

const makeUserActivityList = (o) => {
  return `
	<div class="animallist-item">
		<div class="profile-activity">
			<div class="profile-activity-date">${o.date_create}</div>
			<div>New Activity: ${o.name}</div>
		</div>
	</div>
`;}




const makeAnimalProfile = templater(o=>`
	<div class="animal-profile">
		<div class="animal-profile-image display-flex flex-justify-center">
			<img src="${o.img}" alt="">
		</div>
		<div class="animallist-name">${o.name}</div>
		<div><strong>Breed</strong> ${o.breed}</div>
		<div><strong>Size</strong> ${o.size}</div>
		<div><strong>Color</strong> ${o.color}</div>
		<div><strong>Last Created</strong> ${o.date_create}</div>
		<div><p>${o.description}</p></div>
	</div>
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



const makeUserEditForm = o => `
${FormControl({
	namespace:'user-edit',
	name:'name',
	displayname:'Full Name',
	type:'text',
	placeholder:'Type your full name',
	value:o.name
})}
${FormControl({
	namespace:'user-edit',
	name:'username',
	displayname:'Username',
	type:'text',
	placeholder:'Type your username',
	value:o.username
})}
${FormControl({
	namespace:'user-edit',
	name:'email',
	displayname:'Email',
	type:'text',
	placeholder:'Type your email',
	value:o.email
})}
${FormControl({
	namespace:'user-edit',
	name:'notes',
	displayname:'Notes',
	type:'text',
	placeholder:'Anything esle?',
	value:o.notes
})}
`;



const makeAnimalEditForm = o => `
<div class="animal-profile-image display-flex flex-justify-center">
	<img src="${o.img}">
</div>
${FormControl({
	namespace:'animal-edit',
	name:'name',
	displayname:'Name',
	type:'text',
	placeholder:'Type the doggie name',
	value:o.name
})}
${FormControl({
	namespace:'animal-edit',
	name:'breed',
	displayname:'Breed',
	type:'text',
	placeholder:'Type the breed',
	value:o.breed
})}
${FormControl({
	namespace:'animal-edit',
	name:'size',
	displayname:'Size',
	type:'text',
	placeholder:'Type the size',
	value:o.size
})}
${FormControl({
	namespace:'animal-edit',
	name:'color',
	displayname:'Color',
	type:'text',
	placeholder:'Type the color',
	value:o.color
})}
<div class="form-control">
   <label for="animal-edit-description" class="form-label">Description</label>
   <textarea id="animal-edit-description" class="form-input" data-role="none" placeholder="Type a description" style="height:6em">${o.description}</textarea>
</div>

<div class="form-control">
	<a href="#" class="js-animal-edit form-button">Save</a>
</div>

<div class="form-control">
	<a href="#" class="js-animal-delete form-delete" data-id="${o.id}">Delete</a>
</div>
`;

