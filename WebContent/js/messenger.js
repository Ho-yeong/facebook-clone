	const friends = document.getElementById('nav');
	const m = document.getElementById('m');

	m.onclick = function (){
		if ( friends.style.display === 'block')
			friends.style.display = 'none';
		else
			friends.style.display = 'block';
	};
