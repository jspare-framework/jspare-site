(function(){

	document.querySelector('#form-contact').onsubmit = function(e){
		e.preventDefault();
		var form = document.querySelector('#form-contact');
		var data = {
			name : document.querySelector('input[name="name"]').value,
			mail : document.querySelector('input[name="email"]').value,
			message : document.querySelector('textarea[name="message"]').value
		};
		
		jspare.command('sendMessage')
			.request(data)
			.execute(function(err, result){
				if(err){
					alert(err.message)
					return;
				}
				$('#message-result').text('Sua mensagem foi enviada com sucesso. Você também pode entrar em contato conosco através do email: jspare@jspare.org. Obrigado!');
				$('#modal-message').modal('show');
			});
	};
})();