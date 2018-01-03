jQuery(document).ready(function($) {
	// подмена ссылки на партнерскую
	$('.company-link').on('click', function(e) {
		var idLink = $(this).attr("data-id");
		var link = $(this).attr("href");

		changePartnerLink(idLink, link);
	});

	function changePartnerLink(id, reallink) {
		var otherWindow = window.open();
		var data = {
		    action: 'link',
		    id: id
		};

		jQuery.post( changeLink.ajaxurl, data, function(response) {
			if (response) {
			    otherWindow.opener = null;
			    otherWindow.location = response;
			} else {
				otherWindow.location = reallink;
			}
		});
	}
});