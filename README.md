# PythonAnalysis

## Example code for Playground

```smalltalk
analyzer := PythonAnalyzer new.
analyzer parseProject: './PythonProjects/django-stable-1.11.x'.
analyzer addDetector: DuplicateLiteralString new.
analyzer addDetector: LongLine new.
analyzer addDetector: PrintStatement new.
analyzer addDetector: VarWithoutDeclaration new.
analyzer addDetector: VarWithoutUse new.
analyzer report.
```
### Example project

[TestCases + Django 1.11](https://drive.google.com/uc?id=1LurCXJ8E16H_85fGc8d2wtKMocr4Vm2f&export=download)
