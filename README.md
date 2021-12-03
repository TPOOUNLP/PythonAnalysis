# PythonAnalysis

### [Informe final](https://docs.google.com/document/d/1-tZ-3va1Q7wHXb7BAj0XwRjKcZr5b8LXVXvFnSffZZo/edit?usp=sharing)

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
### Example project unzip inside image's folder

[TestCases + Django 1.11](https://drive.google.com/uc?id=1LurCXJ8E16H_85fGc8d2wtKMocr4Vm2f&export=download)
> **Note:** unzip inside image's folder.
