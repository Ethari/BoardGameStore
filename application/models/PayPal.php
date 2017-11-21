<?php

class PayPal extends CI_Model {

    /*
     * This method generates an admin page wrapped in all necessary elements.
     */
    public function pay($product){
        // 1. Autoload the SDK Package. This will include all the files and classes to your autoloader
        require __DIR__  . '/../../vendor/autoload.php';

        // 2. Provide your Secret Key. Replace the given one with your app clientId, and Secret
        // https://developer.paypal.com/webapps/developer/applications/myapps
        $apiContext = new \PayPal\Rest\ApiContext(
            new \PayPal\Auth\OAuthTokenCredential(
                'ATfMHx2VnuZpYkXSu0sNulDXVi_0GLP5IM9i7EPM8aPOdEkdNn4QPdoiPXiHOOUR0685JrMcATjQEnGJ',     // ClientID
                'EEF9btN2qk5VUDsTQvJlg73kEPjHTErT1CpT0Mo6mu5VjVHQcaEErJqVCiH5PYW7uiTSS3IpDmtpPlTb'      // ClientSecret
            )
        );

        // 3. Lets try to create a Payment
        // https://developer.paypal.com/docs/api/payments/#payment_create
        $payer = new \PayPal\Api\Payer();
        $payer->setPaymentMethod('paypal');

        $amount = new \PayPal\Api\Amount();
        $amount->setTotal($product['Price']);
        $amount->setCurrency('PLN');

        $transaction = new \PayPal\Api\Transaction();
        $transaction->setAmount($amount);

        $redirectUrls = new \PayPal\Api\RedirectUrls();
        $redirectUrls->setReturnUrl("http://localhost/BoardGameStore/Payment/endPayment")
            ->setCancelUrl("http://localhost/BoardGameStore/Payment/endPayment");

        $payment = new \PayPal\Api\Payment();
        $payment->setIntent('sale')
            ->setPayer($payer)
            ->setTransactions(array($transaction))
            ->setRedirectUrls($redirectUrls);

        // 4. Make a Create Call and print the values
        try {
            $payment->create($apiContext);
            ChromePhp::log($payment);
            $link = $payment->getApprovalLink();
            return($link);
        }
        catch (\PayPal\Exception\PayPalConnectionException $ex) {
            // This will print the detailed information on the exception.
            //REALLY HELPFUL FOR DEBUGGING
           // echo $ex->getData();
        }
    }
}