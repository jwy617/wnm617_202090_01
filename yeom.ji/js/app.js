


// query({
// 	type:'users_all',
// 	params:[]
// }).then(d=>{
// 	console.log(d)
// })



$(()=>{

	checkUserId();


	// event delegation
	$(document)


	.on("pagecontainerbeforeshow",function(e,ui) {
		// console.log(ui.toPage[0].id)

		// PAGE ROUTING
		switch(ui.toPage[0].id) {
			case "list-page": ListPage(); break;
			case "recent-page": RecentPage(); break;

			case "user-profile-page": UserProfilePage(); break;
			case "user-edit-page": UserEditPage(); break;
			case "user-upload-page": UserUploadPage(); break;

			case "animal-profile-page": AnimalProfilePage(); break;
			case "animal-edit-page": AnimalEditPage(); break;

			case "location-add-page": LocationAddPage(); break;
		}
	})




	// FORM SUBMITS

	.on("submit","#signin-form",function(e){
		e.preventDefault();
		checkSigninForm();
	})
	.on("submit","#signup-form",function(e){
		e.preventDefault();
		// console.log('honk')
		checkSignupForm();
	})
	.on("submit","#list-search-form",function(e){
		e.preventDefault();
		checkSearchForm();
	})





	// FORM SUBMIT CLICKS

	.on("click",'.js-user-edit',function(e){
		checkUserEditForm();
	})
	.on("click",'.js-animal-add',function(e){
		checkAnimalAddForm();
	})
	.on("click",'.js-animal-edit',function(e){
		checkAnimalEditForm();
	})
	.on("click",'.js-location-add',function(e){
		checkLocationAddForm();
	})
	.on("click",'.js-user-upload',function(e){
		checkUserUploadForm();
	})




	.on("click",".filter",function(){
		checkListFilter($(this).data());
	})

	

	.on("change",".image-uploader input",function(){
		checkUpload(this.files[0])
		.then(d=>{
			console.log(d)
			makeUploaderImage(this,d.result,'uploads/')
		})
	})




	// ANCHOR CLICKS

	.on("click",'.js-logout',function(e){
		sessionStorage.removeItem('userId');
		checkUserId();
	})
	.on("click",'.js-animal-jump',function(e){
		sessionStorage.animalId = $(this).data("id");
		$.mobile.navigate('#animal-profile-page');
	})
	.on("click",'.js-animal-delete',function(e){
		checkAnimalDelete($(this).data("id"));
	})





	.on('click','[data-activate]',function(e){
		let target = $(this).data('activate');
		$(target).addClass("active")
	})
	.on('click','[data-deactivate]',function(e){
		let target = $(this).data('deactivate');
		$(target).removeClass("active")
	})
	.on('click','[data-toggle]',function(e){
		let target = $(this).data('toggle');
		$(target).toggleClass("active")
	})

})
