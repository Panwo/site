	$('#delete_product').click(function(){
		var data = { 'Delete[]' : []};
		$(":checked").each(function() {
			data['Delete[]'].push($(this).val());
		});
		alert('deleted!');
		$.post("/delproduct", data);

	})