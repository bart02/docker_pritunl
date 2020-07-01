import json
with open("/etc/pritunl.conf", "r") as f:
    data = json.load(f)

data['mongodb_uri'] = 'mongodb://localhost:27017/pritunl'

with open("/etc/pritunl.conf", "w") as f:
    json.dump(data, f)
