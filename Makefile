build:
	cat .meta/Base.md > Report.md
	cat 00-Remarks.md >> Report.md
	cat 99-Glossary.md >> Report.md
	cat 01-RequirementsAnalysis/01-UserStories.md >> Report.md
	cat 01-RequirementsAnalysis/02-Requirements.md >> Report.md
	cat 02-UseCases/01-UseCases.md >> Report.md
	cat 02-UseCases/02-DetailedUseCases.md >> Report.md
	cat 03-SequenceDiagrams/Sequence-Diagrams.md >> Report.md
	cat 05-StateDiagram/StateDiagrams.md >> Report.md

	cat 10-Development.md >> Report.md
	cat 90-LessonLearned.md >> Report.md

	pandoc Report.md -o Report.pdf --template .meta/template.tex --top-level-division=chapter -V classoption=oneside
clean:
	rm Report.pdf