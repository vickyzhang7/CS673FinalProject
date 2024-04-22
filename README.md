# AngularEcommerce

Ensure Allow invalid certificates for resources loaded from localhost.

## Backend

To run the backend, execute `SpringBootEcommerceApplication.java`.

## Frontend

1. Navigate to the `angular-ecommerce` directory:

    ```bash
    cd source-code/FullStack/03-frontend/angular-ecommerce
    ```

2. Install dependencies:

    ```bash
    npm install

    ```

3. Install Okta dependencies:

    ```bash
    npm install @okta/okta-signin-widget@7.17.1
    ```

    ```bash
    npm install @okta/okta-angular@6.4.0
    ```

    ```bash
    npm install @okta/okta-auth-js@7.5.1
    ```

4. Install Stripe for payment integration:

    ```bash
    yarn add stripe@8.197.0
    ```

5. Run the development server:

    ```bash
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


