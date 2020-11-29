

/*fetch("../data/items.json")
.then(response => {
   return response.json();
})
.then(data => console.log(data));*/
function Filter(e){
    let dom=document.getElementById('dom')
    dom.innerHTML=""
    if(e){
        let element=items.find(item=>item["dcterms:title"][0]['@value']===e)
        dom.innerHTML=dom.innerHTML+
        `
        <div class="card" style="width: 20rem;">
            <img src=${element["foaf:img"][0]['@value']} class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">${element["dcterms:title"][0]['@value']}</h5>
            </div>
            <ul class="list-group list-group-flush">
              <li class="list-group-item">
                <a href="#" class="card-link">
                Profession : ${element["@type"][1].split(":")[1]}
              </a>
                </li>
              <li class="list-group-item">
                <a href="#" class="card-link">
                Equipe : ${element["dcterms:isPartOf"][0]['display_title']}
                </a>
                </li>
            </ul>
            <div class="card-body">
              <li class="list-group-item">
              <a href="#" class="card-link">..............</a>
            </li>
            </div>
          </div>
        `  
    }else if(e===null) {
        console.log(items)
        items.forEach(element => {
          let dom=document.getElementById('dom')
          dom.innerHTML=dom.innerHTML+
          `
          <div class="card" style="width: 20rem;">
              <img src=${element["foaf:img"][0]['@value']} class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">${element["dcterms:title"][0]['@value']}</h5>
              </div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item">
                  <a href="#" class="card-link">
                  Profession : ${element["@type"][1].split(":")[1]}
                </a>
                  </li>
                <li class="list-group-item">
                  <a href="#" class="card-link">
                  Equipe : ${element["dcterms:isPartOf"][0]['display_title']}
                  </a>
                  </li>
              </ul>
              <div class="card-body">
                <li class="list-group-item">
                <a href="#" class="card-link">..............</a>
              </li>
              </div>
            </div>
          `
          console.log(element)
        });
    }   
}
Filter(null)
