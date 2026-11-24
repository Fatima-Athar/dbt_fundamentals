select
        ID as payment_id,
        ORDERID as order_id,
        paymentmethod as payment_method,
        status as payment_status,
        amount / 100 as amount, -- amount is stored in cents, convert it to dollars
        created as created_at

    from raw.stripe.payment