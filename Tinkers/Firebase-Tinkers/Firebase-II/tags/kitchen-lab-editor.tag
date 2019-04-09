<kitchen-lab-editor>
  <!-- HTML -->
  <h3>Create a new laboratory:</h3>
	<input ref="labName" value="" placeholder="Lab name:">
	<input ref="labKeywords" value="" placeholder="Keywords: Comma separated" onkeypress={ loginEnter }>
	<button type="button" onclick={ createLab }>CREATE LAB</button>

  <script>
    // JAVASCRIPT
		this.user = opts.user;

		createLab(event) {
			let keywords = this.refs.labKeywords.value;
					keywords = keywords.split(',');
					keywords = keywords.map(phrase => {
						return phrase.toLowerCase().replace(/[^a-zA-Z0-9]/g, '').replace(/\s/g, '');
					});
// split - take any character and split it into an array anytime you see ','
// map - the original array is mapped to the new array, same order but worked through any declared "rules"
// return all words in lowercase so taht query does not have problems, e.g. piZZA will be returned as pizza, in the same order
			let lab = {
				name: this.refs.labName.value,
				owner: this.user.username,
				timestamp: firebase.firestore.FieldValue.serverTimestamp(),
				keywords: keywords
			};

			let labRef = database.collection('kitchen-labs').doc();
			let labID = labRef.id;
// calling an empty doc - .doc() - empty doc is a place holder because if you know where the doc is, you know where to send data to
// set up place holder first and then include it with doc(labID) and be more specific in where you want the data to be written

			let kitchenLabRef = database.collection('kitchen-labs').doc(labID);
			let userLabRef = database.collection('kitchen-users').doc(this.user.username).collection('labs').doc(labID);

// batch mean send both writes together. in this instance, send to kichenLabRef and userLabRef
// this is to ensure that the data you want to write - both get set in the same instance (one fail, all fail which means you know whether the whole thing worked or not)
			let batch = database.batch();
					batch.set(kitchenLabRef, lab);
					batch.set(userLabRef, lab);

					batch.commit().then(() => {
						console.log("Batched job: WRITE, to 2 locations successful.");
					});

			this.reset();
		}

    loginEnter(event) {
			if (event.code === "Enter") {
				this.createLab();
			}
		}

		reset() {
			this.refs.labName.value = "";
			this.refs.labKeywords.value = "";
		}
  </script>

  <style>
    /* CSS */
    :scope {
    	display: block;
    	margin-bottom: 4em;
    }
  </style>
</kitchen-lab-editor>
