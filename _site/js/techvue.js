var Vue = require('vue');
class TechnologyVue
{
	constructor(){
		return new Vue({
			el: '#tech',
			data: {
				name: "Test Vue Input"
			}
		});

	}
}

export default TechnologyVue;
