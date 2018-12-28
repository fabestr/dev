var taille = parseFloat(window.prompt('une table de combien?'));
var colonne ;
var ligne ;



document.write('<table>')
for (colonne = 1; colonne <= taille; colonne++){
	document.write('<tr>');

	for ( ligne = 1; ligne <= taille; ligne++){
		if (colonne == ligne){

			document.write('<td class=color>');

		} else {

			document.write('<td>');

		}


		var result= colonne * ligne ;
		parseFloat(document.write(result));

		document.write('</td>');

	}
	document.write('</tr>');
}


document.write('</table>');



