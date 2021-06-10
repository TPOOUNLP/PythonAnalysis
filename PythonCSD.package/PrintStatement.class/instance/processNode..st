accessing
processNode: aNode
	"Si es un nodo tipo print, lo agrego a la collección de nodos tipo print, sino sigo buscando"
	^ (aNode class = PyPrintNode) & (aNode source includesSubstring: 'print(')