#define REDIRECT_URL "byond://game.ss220.space:7721"

/world
	name = "SS220 Redirect"

/client
	authenticate = 0

/client/New()
	src << browse("<a id='link' href='[REDIRECT_URL]'>\
		LINK\
	</a>\
	<script type='text/javascript'>\
		document.getElementById(\"link\").click();\
		window.location=\"byond://winset?command=.quit\"\
	</script>",
	"border=0;titlebar=0;size=1x1")
	return ..()

