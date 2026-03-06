Class {
	#name : 'BaselineOfMooflod',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfMooflod',
	#package : 'BaselineOfMooflod'
}

{ #category : 'baselines' }
BaselineOfMooflod >> baseline: spec [

    <baseline>
    spec for: #common do: [
        "Declaring application packages"
        spec package: 'Mooflod'.

         "External Dependencies"
        spec
            baseline: 'Toplo'
            with: [
            spec repository: 'github://pharo-graphics/Toplo:master/src' ].

        "Linkink external dependencies"
        spec
            package: 'Mooflod' with: [ spec requires: #('Toplo') ].

        "Baseline groups"
        spec
            group: 'core' with: #( 'Mooflod' );
            group: 'default' with: #( 'core' ) ]
]
