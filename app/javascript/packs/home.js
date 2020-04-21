console.log

function currentTable(){
  document.getElementById("current-table").style.display = "block";
  document.getElementById("next-table").style.display = "none";
  
}


function nextTable(){
  document.getElementById("next-table").style.display = "block";
  document.getElementById("current-table").style.display = "none";
}