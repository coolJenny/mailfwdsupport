$(document).ready(function(){
	var mytable = $("#mydatatable").DataTable({
		columnDefs: [{
			targets: 'no-sort',
			orderable: false,
			"searchable": false
		}]
	});
	mytable.destroy();
});