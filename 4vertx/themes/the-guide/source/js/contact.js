(function(){

	document.querySelector('#form-contact').onsubmit = function(e){
		console.info("submiting...")
		e.preventDefault();
		var form = document.querySelector('#form-contact');
		var data = {
			name : document.querySelector('input[name="name"]').value,
			mail : document.querySelector('input[name="email"]').value,
			message : document.querySelector('textarea[name="message"]').value,
			time : new Date().toLocaleDateString('pt-br') + ' ' + new Date().toLocaleTimeString('pt-br')
		};
		
		AWS.config.update({region:"us-west-2"}),
		AWS.config.update({accessKeyId:"AKIAIKJWAYD2QYWZ5PIQ",secretAccessKey:"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"});
		var bucket = new AWS.S3({params: {Bucket: 'messages.jspare'}});
		
		var key = new Date().getTime() + '.txt';
		
		var params = {Key: key, Body: JSON.stringify(data)};
		    bucket.upload(params, function (err, data) {
		    	
		    	if(err){
		    		console.error(err);
					$('#messageError').show();
		    		return;
		    	}
		    	
				$('#message-result').text('Message sended with success!');
				$('#modal-message').modal('show');
		    });
	};
})();