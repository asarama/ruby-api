# Ruby on Rails API

## Debugging

I messed up my RVM setup and for debugging I need to now rely on the following procedure

```bash
rdebug-ide --host 0.0.0.0 --port 1234 --dispatcher-port 1234 -- bin/rails s
```
Then in VsCode `Listen for rdebug`