$(document).ready(function(){
	$("#mydatatable").DataTable({
		columnDefs: [{
			targets: 'no-sort',
			orderable: false
		}]
	});
});