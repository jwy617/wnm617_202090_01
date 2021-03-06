
const checkSignupForm = () => {
	let username = $("#signup-username").val();
	let email = $("#signup-email").val();
	let password = $("#signup-password").val();
	let passwordconfirm = $("#signup-password-confirm").val();

	if(password!=passwordconfirm) {
		// here I need to add warning popup to let users know the error

		throw "Passwords don't match"
		return;
	} else {
		query({
			type:'insert_user', 
			params:[username,email,password]
		}).then(d=>{
			if(d.error) {
				throw d.error;
			}
			console.log(d);
			$.mobile.navigate("#signin-page");
		})
	}
}



const checkUserEditForm = () => {
	let name = $("#user-edit-name").val();
	let username = $("#user-edit-username").val();
	let email = $("#user-edit-email").val();
	let favorite_animal = $("#user-edit-favorite_animal").val();
	let about_me = $("#user-edit-about_me").val();

	query({
		type:'update_user', 
		params:[name,username,email,favorite_animal,about_me,sessionStorage.userId]
	}).then(d=>{
		if(d.error) {
			throw d.error;
		}
		window.history.go(-2);
	})
}



const checkUpload = file => {
	let fd = new FormData();
	fd.append("image",file);

	return fetch('data/api.php',{
		method:'POST',
		body:fd
	}).then(d=>d.json());
}

const checkUserUploadForm = () => {
	let upload = $("#user-upload-image").val()
	if(upload=="") return;

	query({
		type:'update_user_image',
		params:[upload,sessionStorage.userId]
	}).then(d=>{
		if(d.error) {
			throw d.error;
		}
		window.history.back();
	})
}







const checkAnimalAddForm = () => {
	let name = $("#animal-add-name").val();
	let gender = $("#animal-add-gender").val();
	let breed = $("#animal-add-breed").val();
	let size = $("#animal-add-size").val();
	let color = $("#animal-add-color").val();
	let description = $("#animal-add-description").val();

	query({
		type:'insert_animal',
		params:[sessionStorage.userId,name,gender,breed,size,color,description]
	}).then(d=>{
		if(d.error) {
			throw d.error;
		}

		$("#animal-add-form")[0].reset();

		console.log(d);
		sessionStorage.animalId = d.id;
		$.mobile.navigate($("#animal-add-destination").val());
	})	
}

const checkAnimalEditForm = () => {
	let name = $("#animal-edit-name").val();
	let gender = $("#animal-edit-gender").val();
	let breed = $("#animal-edit-breed").val();
	let size = $("#animal-edit-size").val();
	let color = $("#animal-edit-color").val();
	let description = $("#animal-edit-description").val();
	let img = $("#animal-edit-image").val();

	query({
		type:'update_animal',
		params:[name,gender,breed,size,color,description,img,sessionStorage.animalId]
	}).then(d=>{
		if(d.error) {
			throw d.error;
		}
		window.history.back();
	})	
}

const checkAnimalDelete = id => {
	query({
		type:'delete_animal',
		params:[id]
	}).then(d=>{
		if(d.error) {
			throw d.error;
		}
		$.mobile.navigate("#list-page");
	})
}




const checkLocationAddForm = () => {
	let lat = $("#location-add-lat").val();
	let lng = $("#location-add-lng").val();
	let description = $("#location-add-description").val();

	query({
		type:'insert_location',
		params:[sessionStorage.animalId,lat,lng,description]
	}).then(d=>{
		if(d.error) {
			throw d.error;
		}

		$("#location-add-form")[0].reset();

		console.log(d);

		window.history.go(-2);
	})
}





const checkSearchForm = async() => {
	let s = $("#list-search-input").val()
	console.log(s);

	let r = await query({
		type:"search_animals",
		params:[s,sessionStorage.userId]
	})

	drawAnimalList(r.result,`<div class="search-error">Sorry, no results found :(</div>`);

	console.log(r)
}

const checkListFilter = async ({field,value}) => {
	let r = value=="" ?
		await query({
			type:'animals_by_user_id',
			params:[sessionStorage.userId]
		}) :
		await query({
			type:'filter_animals',
			params:[field,value,sessionStorage.userId]
		});

	drawAnimalList(r.result,`<div class="search-error">Sorry, no results found :(</div>`);
}
