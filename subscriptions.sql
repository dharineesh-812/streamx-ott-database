UPDATE Subscriptions
SET end_date = @new_end_date, status = 'Active'
WHERE subscription_id = @subscription_id AND user_id = @user_id;

