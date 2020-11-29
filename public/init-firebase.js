// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
var firebaseConfig = {
	apiKey: "AIzaSyDamvQgNL8UpubL3HTsW14bExCIGtTyePY",
	authDomain: "virtual-temple.firebaseapp.com",
	databaseURL: "https://virtual-temple.firebaseio.com",
	projectId: "virtual-temple",
	storageBucket: "virtual-temple.appspot.com",
	messagingSenderId: "799663626723",
	appId: "1:799663626723:web:7307f8741f0caf3918a8d6",
	measurementId: ""
};
// Initialize Firebase
firebase.initializeApp(firebaseConfig);

//let firestore = firebase.firestore();

console.log(firebase.app().name);  // "[DEFAULT]"
