INSERT INTO users (name, email, password, role, created_at, updated_at) VALUES
                                                                            ('Alice Johnson', 'alice@example.com', 'hashed_password_1', 'Customer', NOW(), NOW()),
                                                                            ('Bob Smith', 'bob@example.com', 'hashed_password_2', 'Customer', NOW(), NOW()),
                                                                            ('Charlie Brown', 'charlie@example.com', 'hashed_password_3', 'Admin', NOW(), NOW());

INSERT INTO categories (name, created_at, updated_at) VALUES
                                                          ('Electronics', NOW(), NOW()),
                                                          ('Clothing', NOW(), NOW());

INSERT INTO categories (name, parent_id, created_at, updated_at) VALUES
                                                                     ('Mobile Phones', 1, NOW(), NOW()),
                                                                     ('Laptops', 1, NOW(), NOW()),
                                                                     ('Men''s Wear', 2, NOW(), NOW()),
                                                                     ('Women''s Wear', 2, NOW(), NOW());

INSERT INTO categories (name, parent_id, created_at, updated_at) VALUES
                                                                     ('Smartphones', 3, NOW(), NOW()),
                                                                     ('Feature Phones', 3, NOW(), NOW()),
                                                                     ('Gaming Laptops', 4, NOW(), NOW()),
                                                                     ('Ultrabooks', 4, NOW(), NOW()),
                                                                     ('Shirts', 5, NOW(), NOW()),
                                                                     ('Dresses', 6, NOW(), NOW());

INSERT INTO products (name, description, price, stock_quantity, category_id, sku, image_url, created_at, updated_at) VALUES
                                                                                                                         ('iPhone 14', 'Latest model iPhone with advanced features.', 999.99, 50, 7, 'IPH14-256GB', 'https://example.com/iphone14.jpg', NOW(), NOW()),
                                                                                                                         ('Samsung Galaxy S22', 'High-end Android smartphone.', 899.99, 30, 7, 'SGS22-128GB', 'https://example.com/galaxys22.jpg', NOW(), NOW()),
                                                                                                                         ('MacBook Pro', 'Powerful laptop with M1 chip.', 1999.99, 20, 9, 'MBP-M1', 'https://example.com/macbookpro.jpg', NOW(), NOW()),
                                                                                                                         ('Dell XPS 13', 'Ultraportable and high-performance laptop.', 1399.99, 25, 10, 'D13-XPS', 'https://example.com/dellxps13.jpg', NOW(), NOW()),
                                                                                                                         ('Men''s Casual Shirt', 'Comfortable casual shirt for men.', 29.99, 100, 11, 'MCS-001', 'https://example.com/mensshirt.jpg', NOW(), NOW()),
('Women''s Dress', 'Elegant dress for women.', 49.99, 75, 12, 'WD-002', 'https://example.com/womensdress.jpg', NOW(), NOW()),
                                                                                                                         ('Gaming Laptop XYZ', 'High-performance laptop for gaming.', 1499.99, 15, 9, 'GLXYZ-2023', 'https://example.com/gaminglaptop.jpg', NOW(), NOW()),
                                                                                                                         ('Feature Phone A', 'Basic feature phone with long battery life.', 49.99, 60, 8, 'FP-A2023', 'https://example.com/featurephone.jpg', NOW(), NOW()),
                                                                                                                         ('Smartphone XYZ', 'Affordable smartphone with great features.', 299.99, 40, 7, 'SPXYZ-2023', 'https://example.com/smartphonexyz.jpg', NOW(), NOW()),
                                                                                                                         ('Laptop ABC', 'Affordable laptop with decent performance.', 799.99, 30, 10, 'LABC-2023', 'https://example.com/laptopabc.jpg', NOW(), NOW()),
                                                                                                                         ('Shirt XYZ', 'Stylish shirt for casual wear.', 34.99, 80, 11, 'SHIRTXYZ-2023', 'https://example.com/shirtxyz.jpg', NOW(), NOW()),
                                                                                                                         ('Dress ABC', 'Casual dress for everyday wear.', 59.99, 60, 12, 'DRESSABC-2023', 'https://example.com/dressabc.jpg', NOW(), NOW()),
                                                                                                                         ('Gaming Laptop ABC', 'Top-of-the-line gaming laptop.', 1999.99, 10, 9, 'GLABC-2023', 'https://example.com/gaminglaptopabc.jpg', NOW(), NOW()),
                                                                                                                         ('Feature Phone B', 'Compact and easy-to-use feature phone.', 39.99, 70, 8, 'FP-B2023', 'https://example.com/featurephoneb.jpg', NOW(), NOW());

INSERT INTO orders (user_id, order_status, total_amount, shipping_address, billing_address, payment_status, discount_id, created_at, updated_at) VALUES
                                                                                                                                                     (1, 'Pending', 1059.97, '456 Elm St', '456 Elm St', 'Unpaid', NULL, NOW(), NOW()),
                                                                                                                                                     (1, 'Shipped', 1999.99, '456 Elm St', '456 Elm St', 'Paid', NULL, NOW(), NOW()),
                                                                                                                                                     (2, 'Delivered', 29.99, '789 Oak St', '789 Oak St', 'Paid', NULL, NOW(), NOW()),
                                                                                                                                                     (2, 'Canceled', 49.99, '789 Oak St', '789 Oak St', 'Unpaid', NULL, NOW(), NOW()),
                                                                                                                                                     (1, 'Pending', 1399.99, '456 Elm St', '456 Elm St', 'Unpaid', NULL, NOW(), NOW()),
                                                                                                                                                     (3, 'Delivered', 49.99, '101 Pine St', '101 Pine St', 'Paid', NULL, NOW(), NOW()),
                                                                                                                                                     (2, 'Shipped', 49.99, '789 Oak St', '789 Oak St', 'Paid', NULL, NOW(), NOW()),
                                                                                                                                                     (3, 'Pending', 999.99, '101 Pine St', '101 Pine St', 'Unpaid', NULL, NOW(), NOW()),
                                                                                                                                                     (1, 'Delivered', 29.99, '456 Elm St', '456 Elm St', 'Paid', NULL, NOW(), NOW()),
                                                                                                                                                     (3, 'Shipped', 899.99, '101 Pine St', '101 Pine St', 'Paid', NULL, NOW(), NOW()),
                                                                                                                                                     (2, 'Pending', 799.99, '789 Oak St', '789 Oak St', 'Unpaid', NULL, NOW(), NOW()),
                                                                                                                                                     (3, 'Delivered', 1499.99, '101 Pine St', '101 Pine St', 'Paid', NULL, NOW(), NOW()),
                                                                                                                                                     (1, 'Shipped', 59.99, '456 Elm St', '456 Elm St', 'Paid', NULL, NOW(), NOW()),
                                                                                                                                                     (2, 'Delivered', 34.99, '789 Oak St', '789 Oak St', 'Paid', NULL, NOW(), NOW()),
                                                                                                                                                     (1, 'Canceled', 299.99, '456 Elm St', '456 Elm St', 'Unpaid', NULL, NOW(), NOW());

INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
                                                                           (1, 1, 1, 999.99),
                                                                           (1, 2, 1, 899.99),
                                                                           (2, 3, 1, 1999.99),
                                                                           (3, 5, 1, 29.99),
                                                                           (4, 6, 1, 49.99),
                                                                           (5, 4, 1, 1399.99),
                                                                           (6, 6, 1, 49.99),
                                                                           (7, 6, 1, 49.99),
                                                                           (8, 1, 1, 999.99),
                                                                           (9, 5, 1, 29.99),
                                                                           (10, 2, 1, 899.99),
                                                                           (11, 10, 1, 799.99),
                                                                           (12, 14, 1, 1499.99),
                                                                           (13, 6, 1, 59.99),
                                                                           (14, 12, 1, 34.99),
                                                                           (15, 7, 1, 299.99);

INSERT INTO payments (order_id, amount, payment_method, payment_status, payment_date, created_at, updated_at) VALUES
                                                                                                                  (1, 1059.97, 'Credit Card', 'Unpaid', NOW(), NOW(), NOW()),
                                                                                                                  (2, 1999.99, 'PayPal', 'Paid', NOW(), NOW(), NOW()),
                                                                                                                  (3, 29.99, 'Credit Card', 'Paid', NOW(), NOW(), NOW()),
                                                                                                                  (4, 49.99, 'Bank Transfer', 'Unpaid', NOW(), NOW(), NOW()),
                                                                                                                  (5, 1399.99, 'Credit Card', 'Unpaid', NOW(), NOW(), NOW()),
                                                                                                                  (6, 49.99, 'PayPal', 'Paid', NOW(), NOW(), NOW()),
                                                                                                                  (7, 49.99, 'Credit Card', 'Paid', NOW(), NOW(), NOW()),
                                                                                                                  (8, 999.99, 'Bank Transfer', 'Unpaid', NOW(), NOW(), NOW()),
                                                                                                                  (9, 29.99, 'Credit Card', 'Paid', NOW(), NOW(), NOW()),
                                                                                                                  (10, 899.99, 'PayPal', 'Paid', NOW(), NOW(), NOW());

-- Insert test data into shipments
INSERT INTO shipments (order_id, shipment_method, tracking_number, shipment_status, shipped_date, delivered_date, created_at, updated_at) VALUES
                                                                                                                                              (1, 'Standard Shipping', 'TRK123456', 'Pending', NULL, NULL, NOW(), NOW()),
                                                                                                                                              (2, 'Express Shipping', 'TRK789012', 'Shipped', NOW(), NULL, NOW(), NOW()),
                                                                                                                                              (3, 'Standard Shipping', 'TRK345678', 'Delivered', NOW(), NOW(), NOW(), NOW()),
                                                                                                                                              (4, 'Standard Shipping', 'TRK901234', 'Returned', NOW(), NULL, NOW(), NOW()),
                                                                                                                                              (5, 'Express Shipping', 'TRK567890', 'Pending', NULL, NULL, NOW(), NOW()),
                                                                                                                                              (6, 'Standard Shipping', 'TRK234567', 'Delivered', NOW(), NOW(), NOW(), NOW()),
                                                                                                                                              (7, 'Express Shipping', 'TRK678901', 'Shipped', NOW(), NULL, NOW(), NOW()),
                                                                                                                                              (8, 'Standard Shipping', 'TRK012345', 'Pending', NULL, NULL, NOW(), NOW()),
                                                                                                                                              (9, 'Express Shipping', 'TRK890123', 'Delivered', NOW(), NOW(), NOW(), NOW()),
                                                                                                                                              (10, 'Standard Shipping', 'TRK345678', 'Shipped', NOW(), NULL, NOW(), NOW());

INSERT INTO discounts (code, description, discount_percentage, start_date, end_date, is_active) VALUES
                                                                                                    ('SUMMER21', 'Summer Sale 2021 - 10% off', 10.00, '2024-06-01', '2024-08-31', TRUE),
                                                                                                    ('WINTER21', 'Winter Sale 2021 - 15% off', 15.00, '2024-12-01', '2024-12-31', TRUE),
                                                                                                    ('FALL21', 'Fall Sale 2021 - 5% off', 5.00, '2024-09-01', '2024-11-30', TRUE);

INSERT INTO inventory_logs (product_id, change_amount, change_type, change_date, created_at, updated_at) VALUES
                                                                                                             (1, -1, 'Sale', NOW(), NOW(), NOW()),
                                                                                                             (2, -1, 'Sale', NOW(), NOW(), NOW()),
                                                                                                             (3, -1, 'Sale', NOW(), NOW(), NOW()),
                                                                                                             (4, -1, 'Sale', NOW(), NOW(), NOW()),
                                                                                                             (5, -1, 'Sale', NOW(), NOW(), NOW()),
                                                                                                             (6, -1, 'Sale', NOW(), NOW(), NOW()),
                                                                                                             (7, -1, 'Sale', NOW(), NOW(), NOW()),
                                                                                                             (8, -1, 'Sale', NOW(), NOW(), NOW()),
                                                                                                             (9, -1, 'Sale', NOW(), NOW(), NOW()),
                                                                                                             (10, -1, 'Sale', NOW(), NOW(), NOW()),
                                                                                                             (11, +10, 'Restock', NOW(), NOW(), NOW()),
                                                                                                             (12, +10, 'Restock', NOW(), NOW(), NOW()),
                                                                                                             (13, +5, 'Adjustment', NOW(), NOW(), NOW()),
                                                                                                             (14, -5, 'Sale', NOW(), NOW(), NOW());

INSERT INTO reviews (product_id, user_id, rating, comment, created_at, updated_at) VALUES
                                                                                       (1, 1, 5, 'Excellent phone with great features!', NOW(), NOW()),
                                                                                       (1, 2, 4, 'Very good phone, but a bit expensive.', NOW(), NOW()),
                                                                                       (2, 1, 3, 'Good phone, but the battery life could be better.', NOW(), NOW()),
                                                                                       (2, 3, 4, 'Nice smartphone, works as expected.', NOW(), NOW()),
                                                                                       (3, 2, 5, 'Amazing laptop for professional work.', NOW(), NOW()),
                                                                                       (3, 3, 4, 'Great performance, but quite pricey.', NOW(), NOW()),
                                                                                       (4, 1, 5, 'The best laptop I have ever used!', NOW(), NOW()),
                                                                                       (4, 2, 4, 'Good laptop, but it gets hot under heavy use.', NOW(), NOW()),
                                                                                       (5, 3, 3, 'The shirt is comfortable but the fit is off.', NOW(), NOW()),
                                                                                       (6, 1, 4, 'Beautiful dress, great for formal occasions.', NOW(), NOW()),
                                                                                       (7, 2, 5, 'Fantastic gaming laptop with great specs!', NOW(), NOW()),
                                                                                       (8, 3, 2, 'The phone is okay but has some issues.', NOW(), NOW()),
                                                                                       (9, 2, 4, 'Affordable and reliable smartphone.', NOW(), NOW()),
                                                                                       (10, 1, 3, 'Decent laptop, but nothing extraordinary.', NOW(), NOW()),
                                                                                       (11, 3, 5, 'Stylish shirt and great quality.', NOW(), NOW()),
                                                                                       (12, 2, 4, 'Comfortable dress, would buy again.', NOW(), NOW()),
                                                                                       (13, 1, 5, 'Excellent performance and build quality.', NOW(), NOW()),
                                                                                       (14, 3, 4, 'Good phone for its price range.', NOW(), NOW());


