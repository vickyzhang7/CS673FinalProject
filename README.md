# AngularEcommerce

Ensure Allow invalid certificates for resources loaded from localhost.

## Backend

To run the backend, execute `SpringBootEcommerceApplication.java`.

## Frontend
1. Navigate to the `angular-ecommerce` directory:
   
   ```bash
   cd source-code/FullStack/03-frontend/angular-ecommerce
   ```

2. Install
   ```bash
   yarn install
   ```

3. Build the Stripe
   ```bash
   yarn add stripe@8.197.0
   ```

4. Run the development server:
   ```bash
   npm start
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


