# APB Parameters

## Prometheus Variables

- **PROMETHEUS_SECURED_DEPLOYMENT**
  - _Default_: True
  - _Type_: Bool
  - _Description_: 'Deploy Prometheus with Oauth-Proxy sidecar'

- **DEPLOY_GRAFANA**
  - _Default_: True
  - _Type_: Bool
  - _Description_: 'Deploy Grafana with Oauth-Proxy sidecar'

## Prometheus Alertmanager Variables

- **SMTP_HOST**
  - _Default_: 'localhost'
  - _Type_: String
  - _Description_: 'Hostname or IP for SMTP host'
  - _Pattern_: ```"^[a-zA-Z0-9_.]*$"```

- **SMTP_PORT**
  - _Default_: '25'
  - _Type_: Number
  - _Description_: 'Port number of SMTP server'

- **SMTP_FROM**
  - _Default_: 'alertmanager@example.org'
  - _Type_: String
  - _Description_: 'Email from field for Notifications'
  - _Pattern_: ```"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+.[a-zA-Z0-9-.]+$"```

- **SMTP_AUTH_USER**
  - _Default_: 'alertmanager'
  - _Type_: String
  - _Description_: 'Username to be authenticated on SMTP server'
  - _Pattern_: ```"^[a-zA-Z0-9_.-]*$"```

- **SMTP_AUTH_PASS**
  - _Default_: 'admin'
  - _Type_: String
  - _Description_: 'Password to be authenticated on SMTP server'
  - _Pattern_: ```"^[a-zA-Z0-9_.-]*$"```

- **MONGODB_MEMORY_LIMIT**
  - _Default_: '512Mi'
  - _Type_: String
  - _Description_: 'Max limit of memory allocation for pod'

## Persistent specific variables

- **PROMETHEUS_STORAGE_SIZE** 
  - _Default_: '10'
  - _Type_: Number
  - _Description_: 'PVC size for Prometheus Storage Size (Gi)'

- **PROMETHEUS_AM_STORAGE_SIZE**
  - _Default_: '10'
  - _Type_: Number
  - _Description_: 'Prometheus Alert Manager Storage Size (Gb)'

- **PROMETHEUS_GRAFANA_STORAGE_SIZE**
  - _Default_: '10'
  - _Type_: Number
  - _Description_: 'Prometheus Grafana Storage Size (Gb)'
