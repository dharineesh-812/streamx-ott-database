
-- Step 1: Record the new payment. 
-- Assuming $100.00 for a monthly subscription.
-- The user_id is passed from the application logic (e.g., @user_id).

INSERT INTO Payments (user_id, payment_mode, amount, payment_date)
VALUES (@user_id, 'Card', 100.00, CURRENT_DATE());