

// go look up async and await
// await allows us to wait for a promise to finish

const ListPage = async() => {
	let d = await query({type:'animals_by_user_id',params:[sessionStorage.userId]});

	console.log(d);

	$("#list-page .animallist").html(makeAnimalList(d.result))
}



const RecentPage = async() => { 
	let d = await query({type:'recent_locations',params:[sessionStorage.userId]});

	console.log(d)

	let valid_animals = d.result.reduce((r,o)=>{
		o.icon = o.img;
		if(o.lat && o.lng) r.push(o);
		return r;
	},[]);

	let map_el = await makeMap("#recent-page .map");

	makeMarkers(map_el,valid_animals);

	map_el.data("markers").forEach((o,i)=>{
		o.addListener("click",function(){

         /*
         // SIMPLE EXAMPLE
         sessionStorage.animalId = valid_animals[i].animal_id;
         $.mobile.navigate("#animal-profile-page")
         */

			map_el.data("infoWindow")
				.open(map_el.data("map"),o);
			map_el.data("infoWindow")
				.setContent(makeAnimalPopup(valid_animals[i]));

         /*
         // ACTIVE EXAMPLE
         $("#recent-drawer").addClass("active");
         $("#recent-drawer .modal-body")
            .html(makeAnimalPopup(valid_animals[i]));
         */ 

		})
	});
}




const UserProfilePage = async() => { 
	let d = await query({type:'user_by_id',params:[sessionStorage.userId]});

	console.log(d);

	$("#user-profile-page .profile").html(makeUserProfile(d.result))
}



const UserProfileEditPage = async() => {
	let d = await query({type:'user_by_id',params:[sessionStorage.userId]});

	console.log(d);

	$("#user-edit-form").html(makeUserProfileUpdateForm(d.result[0]))
}



const AnimalProfilePage = async() => {
	query({type:'animal_by_id',params:[sessionStorage.animalId]})
	.then(d=>{
		console.log(d);
		$("#animal-profile-page .profile")
			.html(makeAnimalProfile(d.result))
	});

	query({type:'locations_by_animal_id',params:[sessionStorage.animalId]})
	.then(d=>{
		console.log(d);
		makeMap("#animal-profile-page .map").then(map_el=>{
			makeMarkers(map_el,d.result)
		});
	});
}




