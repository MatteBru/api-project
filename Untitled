

document.addEventListener('DOMContentLoaded', loaderFunction)

function loaderFunction(event){
  fetch('http://localhost:3000/lists').then(req=>req.json().then(lists => populateList(lists)))
}

const ul = document.querySelector('.target');

let populateList = function(lists) {
  lists.forEach(list => {
    let listRow = document.createElement('li');
    // debugger;
    // currencyRow.innerHTML = `<td><a href="#">${currency}</a></td><td>${json.rates[currency]}</td>`
    listRow.innerHTML = `<a href = http://localhost:3000/lists/${list.id}><h1>${list["title"]}</h1></a>`;
    ul.appendChild(listRow);
    listRow.addEventListener('click', event => {event.preventDefault();tasksLoader(event.currentTarget)})
  })
}

function tasksLoader(listRow) {
  fetch(listRow.firstChild.href).then(req=>req.json().then(list => listTasks(list["tasks"], listRow)))
  // console.log(listRow)
}

function listTasks(tasksOfList, listRow) {
  if (document.querySelector('.potato')) {
    document.querySelector('.potato').remove()
  }
  let taskList = document.createElement('ul')
  taskList.setAttribute( 'class', 'potato' );
  listRow.appendChild(taskList)
  tasksOfList.forEach(task => {
    let taskRow = document.createElement('li')
    taskRow.innerHTML = `<h2>Task: ${task.name}, Completed?: ${task.complete}</h2>`
    taskList.appendChild(taskRow);
  })
}




// , {"headers": {"Content-Type": "application/json", "Accept": "application/json"}}
