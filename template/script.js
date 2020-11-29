

fetch("../data/items.json")
.then(response => {
   return response.json();
})
.then(data => console.log(data));
/*
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
*/


let equipes=[]
let joueurs=[]
let stades=[]
let arbitres=[]
let competitions=[]
let dataJsons=[]


function remplirDom(data){
  let dom=document.getElementsByClassName("space")[0]
  dom.innerHTML=""
  data.forEach(element => {
    let dom=document.getElementsByClassName("space")[0]
    dom.innerHTML=dom.innerHTML+
    `
    <div class="card" style="width: 400px;">
        <img src=${element["foaf:img"][0]['@value']} class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">${element["dcterms:title"][0]['@value']}</h5>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">
            <a href="#" class="card-link">
            Type : ${element["@type"][1].split(":")[1]}
          </a>
            </li>
          <li class="list-group-item">
            <a href="#" class="card-link">
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
  })
}

//let linkApi = "http://localhost/omeka/api/items";

async function recupererData(){

//let data= await fetch(linkApi)

//let dataJson=await data.json()

dataJson=itemsJson

remplirDom(dataJson)

dataJson.forEach(element => {

  if(element["@type"][1].split(":")[1]=="Athlete"){
    joueurs.push(element)
  }
  else if(element["@type"][1].split(":")[1]=="SportsTeamSeason"){
    equipes.push(element)
  }
  else if (element["@type"][1].split(":")[1]=="Referee"){
    arbitres.push(element)
  } else if (element["@type"][1].split(":")[1]=="FootballMatch"){
    competitions.push(element)
  } else if (element["@type"][1].split(":")[1]=="Stadium") {
    stades.push(element)
  }
  dataJsons.push(element)
  });
}   
//}
recupererData()

function Filter(e){

  if(e=="equipes"){
    console.log(equipes)
    remplirDom(equipes)
  } else if(e=="arbitres"){
    console.log(arbitres)
    remplirDom(arbitres)    
  } else if(e=="stades"){
    console.log(stades)
    remplirDom(stades)
  } else if(e=="joueurs"){
    console.log(joueurs)
    remplirDom(joueurs)
  } else if(e=="competitions"){
    console.log(competitions)
    remplirDom(competitions)
  } else{
    console.log(e)
    remplirDom(dataJsons)
  }
}
