
const makeWarning = (target,message) => {
	$(target).addClass("active")
		.find('.message').html(message);
	setTimeout(()=>{
		$(target).removeClass("active");
	},2000);
}


const checkSigninForm = async() => {
	let user = $("#signin-username").val();
	let pass = $("#signin-password").val();

	if(user=='' || pass=='') {
		makeWarning("#signin-warning","Please fill in Username and Password");
		return;
	}

	console.log(user,pass)

	let found_user = await query({
		type:'check_signin',
		params:[user,pass]
	});

	if(found_user.result.length > 0) {
		// logged in
		console.log("success");
		sessionStorage.userId = found_user.result[0].id;

		$("#signin-form")[0].reset();
	} else {
		// not logged in
		console.log("failure");
		sessionStorage.removeItem('userId');

		makeWarning("#signin-warning","Incorrect Username or Password")
	}

	checkUserId();
}


const checkUserId = () => {
	let p = ['#signin-page','#signup-page',''];

	if(sessionStorage.userId === undefined) {
		// not logged in
		if(!p.some(o=>window.location.hash===o))
			$.mobile.navigate("#signin-page");
	} else {
		// logged in
		if(p.some(o=>window.location.hash===o)) {
			query({type:'animals_by_user_id', params:[sessionStorage.userId]
				})
			.then(d=>{
				if(d.result.length) $.mobile.navigate("#recent-page");
				else $.mobile.navigate("#list-page");
			})
		}
	}
}



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
		query({type:'insert_user', params:[username,email,password]})
		.then(d=>{
			if(d.error) {
				throw d.error;
			}
			console.log(d);
			$.mobile.navigate("#signin-page");
		})
	}
}



