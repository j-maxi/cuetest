# CUE sample implementation

go 1.12

```bash
go get -u cuelang.org/go/cmd/cue
cue get go k8s.io/api/extensions/v1beta1
cue export base.cue label.cue param.cue demo.cue
```
