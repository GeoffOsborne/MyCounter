"
Counter a a simple concrete class that supports incrementing and decrementing.
Its API is 
- increment, decrement
- count
Its creation API is message startingAt:
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [
	^ self new count: anInteger.
]

{ #category : #accessing }
Counter >> count [
	^ count.
]

{ #category : #accessing }
Counter >> count: aNumber [
	count := aNumber.
]

{ #category : #operations }
Counter >> decrement [
	count := count - 1.
]

{ #category : #operations }
Counter >> increment [
	count := count + 1.
]

{ #category : #initialization }
Counter >> initialize [
	count := 0.
]

{ #category : #printing }
Counter >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' with value: ', count printString.
]
