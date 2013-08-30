class TemplateController < ApplicationController
  def simple
  end

  def complex
  end
  
  def data
    render json: {
  		name_first: 'Quentin',
  		name_last: 'Tarantino',
  		films: [
  			{ name: 'Reservoir Dogs', display: false },
  			{ name: 'Pulp Fiction', display: false },
  			{ name: 'Kill Bill: Vol. 1', display: true },
  			{ name: 'Kill Bill: Vol. 2', display: true },
  			{ name: 'Inglorious Basterds', display: false }
  		]
  	}
  end
  

  # ,"books":{"section":{"mathematics":[{"author":"Big Brains","title":"Homology For Pros","price":31},{"author":"Franz Mute","title":"Algebra For The REST of Us","price":58},{"author":"Charlie X","title":"The Art of Solving Polynomials ","price":67}],"anatomy":[{"author":"Dr. Dark Gray","title":"Mysterious Organs","price":118},{"author":"Dr. Karma Man","title":"The New Appendix Theory","price":167},{"author":"Dr. Jean Grey","title":"The Cortical Hemispheres","price":82}],"compsci":[{"author":"John Hackabody","title":"Interpreters","price":90},{"author":"Joy Fewding","title":"Image Processing","price":99},{"author":"Jerry Ice","title":"Recursive Function Theory","price":36}],"litterature":[{"author":"Carey Derry","title":"Roman Ants","price":74},{"author":"Dilly Dally","title":"Better Not Forgotten","price":4},{"author":"Sizzle Khole","title":"Roads From Nowhere","price":121},{"author":"Nort Hastings","title":"Pictures From Childhood","price":23}]}}}}"
  def products
    render json: {
      departments: {
        computers: [
          {
            name: "Holographic Book",
            manufacturer: "MacOdessy",
            price: 8294
          },
          {
            name: "Nano Cortex",
            manufacturer: "Big Biotech",
            price: 6002
          },
          {
            name: "Computational Paper",
            manufacturer: "Silicon Revolution",
            price: 8493
          },
          {
            name: "Distributed Point",
            manufacturer: "Micro Massive Oxymorons",
            price: 7073
          },
          {
            name: "Art Implant",
            manufacturer: "Sleeping Androids Inc.",
            price: 6620
          }
        ],
        clothing: [
          {
            brand: "Cosmic Step",
            item: "socks",
            price: 10
          },
          {
            brand: "Bare Bones",
            item: "shirt",
            price: 25
          },
          {
            brand: "Hippidy",
            item: "shorts",
            price: 27
          }
        ]
      }
    }
  end
end
