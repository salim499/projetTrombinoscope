
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
    <div class="card" style={{width: "400px;"}}>
        <img src=${element['thumbnail_display_urls'].square} class="card-img-top" alt="...">
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
      </div>

    `
  })
}

let linkApi = "https://jardindesconnaissances.univ-paris8.fr/THYP/20-21/g8/omk/api/items";

async function recupererData(){

let data= await fetch(linkApi)

let dataJson=await data.json()


if(dataJson[0]!=null){

  remplirDom(dataJson)

} else {
  let dom=document.getElementsByClassName("space")[0]
  dom.innerHTML=`<h1>
  Oups, aucun élément ne correspond à votre recherche
  </h1>`    
}

dataJson.forEach(element => {
  console.log()
  console.log(element['thumbnail_display_urls'].medium)
  console.log(element['thumbnail_display_urls'].large)

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

function chercher(){
    let input=document.getElementById("inputText")
    let dataFiltered=dataJsons.filter(e=>((e["dcterms:title"][0]['@value']).toLowerCase()).includes((input.value).toLowerCase())
    ||((input.value).toLowerCase()).includes((e["dcterms:title"][0]['@value']).toLowerCase()))
    if(dataFiltered[0]!=null){
      remplirDom(dataFiltered)
    } else {
      let dom=document.getElementsByClassName("space")[0]
      dom.innerHTML=`<h1>
      Oups, aucun élément ne correspond à votre recherche
      </h1>`    
    }
  }

 async function omekaFunction(){
  let dom=document.getElementsByClassName("space")[0]
  dom.innerHTML=""

  let linkApiCollection='https://jardindesconnaissances.univ-paris8.fr/THYP/20-21/g8/omk/api/vocabularies'
  let data= await fetch(linkApiCollection)
  let dataJson=await data.json()

  dataJson.forEach(e=>{
    console.log(e)
    dom.innerHTML=dom.innerHTML+
    `
    <table class="table table-dark" id="table">
    <thead>
      <tr>
        <th scope="col">Element</th>
        <th scope="col">Value</th>
      </tr>
    </thead>
    <tbody>
      <tr>
      <th scope="col">Id</th>
        <td>${e["o:id"]}</td>
      </tr>
      <tr>
      <td>Label</td>
      <td>${e["o:label"]}</td>
      </tr>
      <tr>
      <td>Prefix</td>
      <td>${e["o:prefix"]}</td>
      </tr>
    </tbody>
  </table>
    `
  })
}
