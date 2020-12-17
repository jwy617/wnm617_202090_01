
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
		<h2 style="margin:0; padding:0.5em 0;">${o.name}</h2>
		<div style="margin-bottom:0.5em"><strong>${o.favorite_animal}</strong> is my favorite doggie!</div>
		<div style="padding-bottom: 4vh; text-align: left; margin: 1em;">${o.about_me}</div>

		<div class="user-profile-image">
			<img src="${o.img}" alt="">
			<div class="floater right top">
				<a href="#user-upload-page" class="btn-circle-blue"><span class="material-icons icon-edit">edit</span></a>
			</div>
		</div>

		<div class="floater right top">
			<a href="#user-settings-page" class="btn-circle-blue"><span class="material-icons icon-edit">settings</span></a>
		</div>
	</div>
	`);




const makeUploaderImage = (el, name, folder='') => {
	$(el).parent().css({'background-image':`url('${folder+name}')`}).addClass("picked")
		.prev().val(folder+name);
}





const makeAnimalProfile = templater(o=>`
	<div class="animal-profile">
		<div class="animal-profile-image">
			<img src="${o.img}" alt="">
		</div>
		<h2 style="margin:0; padding:0.5em 0">${o.name}</h2>
		<div class="small-text" style="padding-bottom:1em"><strong>Last Created</strong> ${o.date_create}</div>

		<div><strong>Gender</strong> ${o.gender}</div>
		<div><strong>Breed</strong> ${o.breed}</div>
		<div><strong>Size</strong> ${o.size}</div>
		<div><strong>Color</strong> ${o.color}</div>

		<div><p>${o.description}</p></div>

		<div class="floater right top">
			<a href="#animal-edit-page" class="btn-circle-blue"><span class="material-icons icon-edit">edit</span></a>
		</div>
	</div>
	`);

//		<div class="form-control">
//			<a href="#animal-edit-page"><input type="submit" value="Edit" data-role="none" class="form-button"></a>
//		</div>



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
	name:'favorite_animal',
	displayname:'Favorite Animal',
	type:'text',
	placeholder:'Type your favorite animal',
	value:o.favorite_animal
})}
<div class="form-control">
   <label for="user-edit-about_me" class="form-label">About Me</label>
   <textarea id="user-edit-about_me" class="form-input" data-role="none" placeholder="" style="height:6em">${o.about_me}</textarea>
</div>
`;





// <div class="animal-profile-image display-flex flex-justify-center">
// 	<img src="${o.img}">
// 	<div class="floater right bottom">
// 		<a href="#animal-upload-page" class="btn-circle" style="color: var(--color-main-medium)"><span class="material-icons icon-edit">edit</span></a>
// 	</div>
// </div>

const makeAnimalEditForm = o => `
<div>
	<input type="hidden" id="animal-edit-image" value="${o.img}">
	<label class="image-uploader thumbnail picked" style="background-image:url('${o.img}')">
	   <input type="file" data-role="none" id="animal-edit-input">
	</label>
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
	name:'gender',
	displayname:'Gender',
	type:'text',
	placeholder:'Type the gender',
	value:o.gender
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
	<a href="#" class="js-animal-edit"><input type="submit" value="Save" data-role="none" class="form-button"></a>
</div>

<div class="form-control">
	<a href="#" class="js-animal-delete form-delete" data-id="${o.id}">Delete</a>
</div>

`;





const drawAnimalList = (a, empty_phrase=`<div class="animallist-name" style="padding-top:1em;">No animals yet. Start adding one!</div>`) => {
	$("#list-page .animallist").html(
		a.length ? makeAnimalList(a) : empty_phrase
	)
}



const capitalize = s => s== '' ? '' : s[0].toUpperCase()+s.substr(1);

const filterList = (animals,breed) => {
	let a = [...(new Set(animals.map(o=>o[breed])))];
	return templater(o=>`<div class="filter" data-field="${breed}" data-value="${o}">${capitalize(o)}</div>`)(a);
}

const makeFilterList = (animals) => {
	return `
	<div class="filter" data-field="breed" data-value="">All</div>
	|
	${filterList(animals,'breed')}
	`
}

