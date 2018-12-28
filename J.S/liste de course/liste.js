var list = [];
//var plus = window.prompt('produit à ajouter??');
//var moins = window.prompt('produità retirer??');
var produit1 = window.prompt('produit1??');
var produit2 = window.prompt('produit2??');
var produit3 = window.prompt('produit3??');
var produit4 = window.prompt('produit4??');



function ajoute(produitadd)
{
	list.push(produitadd);
}

ajoute(produit1);
ajoute(produit2);
ajoute(produit3);
ajoute(produit4);

console.log(list);

var itemsuppr = window.prompt("produit a supp?");


function supprime(item)
{	
	console.log(list.indexOf(item));
	var index = list.indexOf(item);

	if (index != -1) {
		list.splice(index ,1);
	}
	
	
}

supprime(itemsuppr);

console.log(list);

function allsuppr ()
{
	console.log(list.length);
	list.splice(0,list.length);
}

allsuppr();

console.log(list);

document.write(list.length);


/******************************************************
*******************CORRECTION**************************
******************************************************/


var shoppingList = new Array();

function addItem(item)
{

	shoppingList.push(item);

}

function displayShoppingList()
{

	console.log('La liste contient ' + shoppingList.length + ' produit(s).');
	console.log(shoppingList);
    
    document.write('<ul>');
    
    for (var i = 0; i < shoppingList.length; i++) {
    
    	document.write('<li>'+shoppingList[i]+'</li>')
    	
    }
    
    document.write('</ul>');
}

function removeAllItems()
{

	shoppingList = [];
    
    //shoppinglist(0, shoppingList.length -1);
    
}


function removeItem(item)
{
	var index = shoppingList.indexOf(item);
    
    if(index == -1)
	{
    	console.log("ERREUR : le produit " + item + " n'existe dans la liste de courses");

    } else {
    	shoppingList.splice(index, 1);
    }
    

}





console.clear();


addItem('Fraises');
addItem('Poulet');
addItem('Tournevis');
addItem('Artichaut');

displayShoppingList()


removeItem(window.prompt('Quel produit de la liste de courses souhaitez-vous supprimer ?'));
displayShoppingList();

removeAllItems();
displayShoppingList();

