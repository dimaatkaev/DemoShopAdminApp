CREATE TABLE users (
                       id SERIAL PRIMARY KEY,
                       name VARCHAR(255) NOT NULL,
                       email VARCHAR(255) UNIQUE NOT NULL,
                       password TEXT NOT NULL,
                       role VARCHAR(50) NOT NULL CHECK (role IN ('Admin', 'Customer')),
                       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                       updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categories (
                            id SERIAL PRIMARY KEY,
                            name VARCHAR(255) NOT NULL,
                            parent_id INT REFERENCES categories(id) ON DELETE SET NULL,
                            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                            updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products (
                          id SERIAL PRIMARY KEY,
                          name VARCHAR(255) NOT NULL,
                          description TEXT,
                          price NUMERIC(10, 2) NOT NULL CHECK (price >= 0),
                          stock_quantity INT NOT NULL CHECK (stock_quantity >= 0),
                          category_id INT REFERENCES categories(id) ON DELETE SET NULL,
                          sku VARCHAR(100) UNIQUE NOT NULL,
                          image_url TEXT,
                          created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                          updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE discounts (
                           id SERIAL PRIMARY KEY,
                           code VARCHAR(50) UNIQUE NOT NULL,
                           description TEXT,
                           discount_percentage NUMERIC(5, 2) NOT NULL CHECK (discount_percentage >= 0 AND discount_percentage <= 100),
                           start_date DATE NOT NULL,
                           end_date DATE NOT NULL,
                           is_active BOOLEAN DEFAULT TRUE
);

CREATE TABLE orders (
                        id SERIAL PRIMARY KEY,
                        user_id INT REFERENCES users(id) ON DELETE CASCADE,
                        order_status VARCHAR(50) NOT NULL CHECK (order_status IN ('Pending', 'Shipped', 'Delivered', 'Canceled')),
                        total_amount NUMERIC(10, 2) NOT NULL CHECK (total_amount >= 0),
                        shipping_address TEXT NOT NULL,
                        billing_address TEXT NOT NULL,
                        payment_status VARCHAR(50) CHECK (payment_status IN ('Paid', 'Unpaid')),
                        discount_id INT REFERENCES discounts(id) ON DELETE SET NULL,
                        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE order_items (
                             id SERIAL PRIMARY KEY,
                             order_id INT REFERENCES orders(id) ON DELETE CASCADE,
                             product_id INT REFERENCES products(id) ON DELETE CASCADE,
                             quantity INT NOT NULL CHECK (quantity > 0),
                             price NUMERIC(10, 2) NOT NULL CHECK (price >= 0),
                             total NUMERIC(10, 2) GENERATED ALWAYS AS (quantity * price) STORED
);

CREATE TABLE inventory_logs (
                                id SERIAL PRIMARY KEY,
                                product_id INT REFERENCES products(id) ON DELETE CASCADE,
                                change_amount INT NOT NULL,
                                change_type VARCHAR(50) CHECK (change_type IN ('Purchase', 'Sale', 'Restock', 'Adjustment')),
                                change_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE payments (
                          id SERIAL PRIMARY KEY,
                          order_id INT REFERENCES orders(id) ON DELETE CASCADE,
                          amount NUMERIC(10, 2) NOT NULL CHECK (amount >= 0),
                          payment_method VARCHAR(50) CHECK (payment_method IN ('Credit Card', 'PayPal', 'Bank Transfer')),
                          payment_status VARCHAR(50) CHECK (payment_status IN ('Paid', 'Unpaid')),
                          payment_date TIMESTAMP,
                          created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                          updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE shipments (
                           id SERIAL PRIMARY KEY,
                           order_id INT REFERENCES orders(id) ON DELETE CASCADE,
                           shipment_method VARCHAR(50),
                           tracking_number VARCHAR(100),
                           shipment_status VARCHAR(50) CHECK (shipment_status IN ('Pending', 'Shipped', 'Delivered', 'Returned')),
                           shipped_date TIMESTAMP,
                           delivered_date TIMESTAMP,
                           created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                           updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE reviews (
                         id SERIAL PRIMARY KEY,
                         product_id INT REFERENCES products(id) ON DELETE CASCADE,
                         user_id INT REFERENCES users(id) ON DELETE CASCADE,
                         rating INT CHECK (rating BETWEEN 1 AND 5),
                         comment TEXT,
                         created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                         updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

