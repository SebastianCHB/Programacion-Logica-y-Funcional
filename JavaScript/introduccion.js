var ul = document.getElementById("lista")
let url = "https://thesimpsonsapi.com/api/"

let arr_original = []
var list=""
var getLista = (page)=>{ 

    fetch(url+"characters?page="+page).then(response=>{
        if(!response.ok){
            console.log("Error en la red")
        }
        return response.json()
    }).then(data=>{
        console.log("Datos del personaje: ",data)
        data.results.forEach(personaje=>{
            arr_original.push({
                personaje:personaje,
                datos:null,
    
            })
            list+=`
            <li>
                <img src="https://cdn.thesimpsonsapi.com/500${personaje.portrait_path}" width="200px">
                <h2>${personaje.name}</h2>
            </li>   `
        })
        ul.innerHTML = list
        console.log("ARREGLO: ", arr_original)
    })
}

for (let i = 1; i <= 5; i++) {
    getLista(i)
}

setTimeout(()=>{
    document.getElementById("preloader").style.display = "none"
},1000)

const imprimir =(arr)=>{
    var todo = "";
    arr.forEach(item=>{
        todo+=`
            <li>
                <img src="https://cdn.thesimpsonsapi.com/500${item.personaje.portrait_path}" width="200px">
                <h2>${item.personaje.name}</h2>
            </li>   `
    })
    ul.innerHTML=todo
}
//Menores de 18 
document.querySelector("#linkEdad").addEventListener('click', (evt) => {
    evt.preventDefault();
    let res = arr_original.filter(item => item.personaje.age !== null && item.personaje.age < 18);
    console.log("Menores de 18 (sin null):", res);
    imprimir(res);
});
//Promedio
document.querySelector("#promedio").addEventListener('click', (evt) => {
    evt.preventDefault();
    const personajesConEdad = arr_original.filter(item => item.personaje.age !== null);
    const sumaDeEdades = personajesConEdad.reduce((acumulador, item) => {
        return acumulador + item.personaje.age;
    }, 0);
    const promedio = sumaDeEdades / personajesConEdad.length;
    alert(`El promedio de edad es: ${promedio.toFixed(2)} años.`);
});
//Fallecidos
document.querySelector("#fallecidos").addEventListener('click', (evt)=>{
    evt.preventDefault();
    let dec = arr_original.filter(item => item.personaje.status == "Deceased");
    console.log("Fallecidos: ",dec);
    imprimir(dec);
})

//Ordenar por edad ASC
document.querySelector("#opea").addEventListener('click', (evt)=>{
    evt.preventDefault();
    const nonull = arr_original.filter(item =>{
        return item.personaje.age !== null;
    })
    const orden = nonull.sort((a,b) => {
        return a.personaje.age - b.personaje.age;
    });
    imprimir(orden)
})

//Viejo y joven
document.querySelector("#rucos").addEventListener('click', (evt) => {
    evt.preventDefault();
    const soloEdades = arr_original
        .map(item => item.personaje.age) 
        .filter(age => age !== null);  

    const edadMasJoven = Math.min(...soloEdades);
    const edadMasViejo = Math.max(...soloEdades);

    const personajesExtremos = arr_original.filter(item => 
        item.personaje.age === edadMasJoven || item.personaje.age === edadMasViejo
    );

    imprimir(personajesExtremos);
});
//Estudiantes
document.querySelector("#Estudiantes").addEventListener('click', evt => {
    evt.preventDefault();
    const estudiantes = arr_original.filter(item =>
        item.personaje.occupation?.toLowerCase().includes("student")
    );
    console.log("Son estudiantes: ", estudiantes);
    imprimir(estudiantes);
});