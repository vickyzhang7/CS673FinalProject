# AngularEcommerce

## Backend
To run the backend, execute `SpringBootEcommerceApplication.java`.

## Frontend
1. Navigate to the `angular-ecommerce` directory:
   ```bash
   cd FullStack/03-frontend/angular-ecommerce
   ```

2. Run the development server:
   ```bash
   npm install
   npm i
   npm run start
   ```

## Troubleshooting
If you encounter the following problem:
```
opensslErrorStack: [ 'error:03000086:digital envelope routines::initialization error' ],
library: 'digital envelope routines',
reason: 'unsupported',
code: 'ERR_OSSL_EVP_UNSUPPORTED'
```
You can use:
```bash
export NODE_OPTIONS=--openssl-legacy-provider
```

Make sure you have Node.js v20.5.0 installed.
```