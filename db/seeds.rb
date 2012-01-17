outcome_group = OutcomeGroup.create(title: 'Initial')

outcomes = Outcome.create([{title: 'Add Numbers', key: 'A'},
                           {title: 'Bitshift Binary', key: 'B'},
                           {title: 'Compute Cunningly', key: 'C'},
                           {title: 'Digitally Divide', key: 'D'}])

outcome_group.outcomes = outcomes

term = Term.create(name: '2012 Winter',
                   outcome_group: outcome_group)

Offering.create([{title: 'CS 300', term: term},
                 {title: 'CS 321', term: term},
                 {title: 'CS 441', term: term}])


               
