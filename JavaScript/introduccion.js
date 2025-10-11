var ul = document.getElementById("lista")
let url = "https://thesimpsonsapi.com/api/"
var list=""
let arr_original = []
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
            datos:null
        })
        list+=`
        <li>
            <img src="https://cdn.thesimpsonsapi.com/500${personaje.portrait_path}" width="200px">
            <h2>${personaje.name}</h2>
        </li>   `
    })
    ul.innerHTML = list
    console.log("Arreglo final",arr_original)
})
}
for(let i=1;i<=5;i++){
    getLista(i)
}
const imprimir = (arr)=>{
    var todo = "";
    arr.forEach(item=>{
        todo += `
        <li>
            <img src="https://cdn.thesimpsonsapi.com/200${item.personaje.portrait_path}" width="200px" />
            <h2>${item.personaje.name}</h2>
        </li>`
    })
    ul.innerHTML = todo
}
document.querySelector("#mostrarTodo").addEventListener('click',(evt)=>{
    evt.preventDefault()
    console.log(arr_original)
    imprimir(arr_original)
});
document.querySelector("#fallecidos").addEventListener('click',(evt)=>{
    evt.preventDefault()
    let fallecidos = arr_original.filter(item => item.personaje.status === "Deceased")
    console.log(fallecidos)
    imprimir(fallecidos)
});
document.querySelector("#menores").addEventListener('click',(evt)=>{
    evt.preventDefault()
    let notnull = arr_original.filter(item => item.personaje.age !== null)
    let menores = notnull.filter(item => item.personaje.age < 18)
    console.log(menores)
    imprimir(menores)
});
document.querySelector("#promedio").addEventListener('click',(evt)=>{
    evt.preventDefault()
    let notnull = arr_original.filter(item => item.personaje.age !== null)
    let promedio = notnull.reduce((acc, item) => acc + item.personaje.age, 0) / notnull.length
    console.log(promedio)
    alert("El promedio de edad es: " + promedio.toFixed(2))
});
document.querySelector("#ordenEdad").addEventListener('click',(evt)=>{
    evt.preventDefault()
    let nonull = arr_original.filter(item => item.personaje.age !== null)
    let orden = nonull.sort((a, b) => a.personaje.age - b.personaje.age)
    console.log(orden)
    imprimir(orden)
});
document.querySelector("#viejo_joven").addEventListener('click',(evt)=>{
    evt.preventDefault()
    let nonull = arr_original.filter(item => item.personaje.age !== null)
    let viejo = nonull.sort((a, b) => b.personaje.age - a.personaje.age)[0]
    let joven = nonull.sort((a, b) => a.personaje.age - b.personaje.age)[0]
    let personajes = [viejo, joven]
    imprimir(personajes)
    console.log("Personaje más viejo: ", viejo)
    console.log("Personaje más joven: ", joven)
});
document.querySelector("#students").addEventListener('click',(evt)=>{
    evt.preventDefault()
    let estudiantes = arr_original.filter(item => item.personaje.occupation.includes("Student"))
    console.log(estudiantes)
    imprimir(estudiantes)
});
document.querySelector("#fecha").addEventListener('click',(evt)=>{
    evt.preventDefault()
    let filtronull = arr_original.filter(item => item.personaje.birthdate !== null && item.personaje.birthdate !== "")
    let nacidosAntes = filtronull.filter(item => new Date(item.personaje.birthdate) < new Date("1980-02-01"))
    console.log(nacidosAntes)
    imprimir(nacidosAntes)
});
document.querySelector("#search-input").addEventListener('input', (evt) => {
    let texto = evt.target.value.toLowerCase();

    let filtrado = arr_original.filter(item => {
        return item.personaje.phrases.some(frase => 
            frase.toLowerCase().includes(texto)
        );
    });

    console.log(filtrado);
    imprimir(filtrado);
});