const alert = (msg, loc) => {
	return `<script>
	alert("${msg}");
	location.href = "${loc}";
	</script>`;
};

module.exports = { alert };
