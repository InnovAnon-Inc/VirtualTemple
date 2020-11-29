// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
var firebaseConfig = {
  "projectId": "virtual-temple",
  "appId": "1:799663626723:web:7307f8741f0caf3918a8d6",
  "databaseURL": "https://virtual-temple.firebaseio.com",
  "storageBucket": "virtual-temple.appspot.com",
  "locationId": "us-central",
  "apiKey": "AIzaSyDamvQgNL8UpubL3HTsW14bExCIGtTyePY",
  "authDomain": "virtual-temple.firebaseapp.com",
  "messagingSenderId": "799663626723",
  "measurementId": "G-031TE51FGB"
};

// Initialize Firebase
firebase.initializeApp(firebaseConfig);

//let firestore = firebase.firestore();

console.log(firebase.app().name);  // "[DEFAULT]"
