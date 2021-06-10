private - actions
dfs: aNodesCollection
	| aMatchingNodesCollection |
	"Creo la collección que voy a devolver con los nodes que encuentre"
	aMatchingNodesCollection := OrderedCollection new.
	aNodesCollection isNotNil
		ifTrue: [ aNodesCollection isNotEmpty
				ifTrue: [ aNodesCollection
						do: [ :node | 
							node isNotNil
								ifTrue: [ | resultProcess nextNodesCollection |
									resultProcess := self processNode: node.
									resultProcess
										ifTrue: [ "Se ignoran los nodos contenedores de sentencias"
											node class = PySimpleStmtNode | (node class = PyFuncdefNode)
												ifFalse: [ aMatchingNodesCollection add: node ] ].
									"El array de nodos siguientes, según la clase que sea el nodo, puede obtenerse con #stmts o #statements"
									(node respondsTo: #stmts)
										ifTrue: [ nextNodesCollection := node stmts ]
										ifFalse: [ (node respondsTo: #statements)
												ifTrue: [ nextNodesCollection := node statements ] ].
									"Si hay nextNodes, se sigue buscando en profundidad"
									nextNodesCollection isNotNil
										ifTrue: [ nextNodesCollection isNotEmpty
												ifTrue: [ aMatchingNodesCollection addAll: (self dfs: nextNodesCollection) ] ] ] ] ] ].
	^ aMatchingNodesCollection