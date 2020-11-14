let urlData = "http://localhost/omeka/api/items";

async function recupererData(){

let data= await fetch(urlData)

let dataJson=await data.json()

for(let i=0;i<(dataJson.length-4)/4;i++){
    let tbody=document.getElementById('tbody')

        tbody.innerHTML=tbody.innerHTML+ `<tr>
                                          <td>${dataJson[i]["dcterms:title"][0]["@value"]}</td>
                                        <td>${dataJson[i+6]["dcterms:title"][0]["@value"]}</td>
                                         <td>${dataJson[i+12]["dcterms:title"][0]["@value"]}</td>
                                        <td>${dataJson[i+19]["dcterms:title"][0]["@value"]}</td>
                                        </tr>`
}

}
recupererData()

/*data.forEach(element => {
  console.log(element["dcterms:title"][0]["@value"])  
});*/

/*d3.json(urlData).then(function(data) {
  console.log(data);
  d3.select('#dataviz').selectAll('div').data(data).enter().append('div')
      .html(d=>d["dcterms:title"][0]["@value"]);
});*/