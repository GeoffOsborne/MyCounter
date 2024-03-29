"
`Counter` is a simple concrete class which supports incrementing and
decrementing.
Its API is
- `decrement` and `increment`
- `count`
Its creation message is `startAt:`
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
Counter >> count [
	^ count
]

{ #category : #accessing }
Counter >> count: c [
	count := c
]

{ #category : #API }
Counter >> decrement [
    count := count - 1
]

{ #category : #API }
Counter >> increment [
    count := count + 1
]

{ #category : #initialization }
Counter >> initialize [
"set the initial value of the value to 0"
   count := 0
]
