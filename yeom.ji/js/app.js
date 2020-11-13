


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
			case "user-profile-edit-page": UserProfileEditPage(); break;
			case "animal-profile-page": AnimalProfilePage(); break;
		}
	})



	// FORM SUBMITS
	.on("submit","#signin-form",function(e){
		e.preventDefault();
		checkSigninForm();
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
