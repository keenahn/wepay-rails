class CreateWepayCheckoutRecords < ActiveRecord::Migration
    def self.up

        create_table :wepay_checkout_records do |t|
            t.integer :checkout_id
            t.integer :preapproval_id
            t.integer :account_id
            t.string :state
            t.string :short_description
            t.text :long_description
            t.string :currency
            t.decimal :amount
            t.decimal :app_fee
            t.string :fee_payer
            t.decimal :gross
            t.decimal :fee
            t.string :reference_id
            t.text :redirect_uri
            t.text :callback_uri
            t.text :checkout_uri
            t.text :preapproval_uri
            t.string :payer_email
            t.string :payer_name
            t.text :cancel_reason
            t.text :refund_reason
            t.boolean :auto_capture
            t.boolean :require_shipping
            t.text :shipping_address
            t.decimal :tax
            t.string :security_token
            t.string :access_token
            t.string :mode
            t.string :period
            t.integer :frequency
            t.datetime :start_time
            t.datetime :end_time
            t.string :manage_uri
            t.datetime :create_time
            t.boolean :auto_recur

            t.timestamps
        end

        add_index :wepay_checkout_records, :checkout_id
        add_index :wepay_checkout_records, :preapproval_id
    end

    def self.down
        drop_table :wepay_checkout_records
    end
end
