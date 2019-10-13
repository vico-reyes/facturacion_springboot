INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (1, 'Victor', 'Reyes', 'sir.rotvico@gmail.com', '1989-02-09','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (2, 'Tu', 'Solo tu', 'se.feliz@gmail.com', '2019-09-14','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (3, 'Victor', 'Reyes', 'sir.rotvico@gmail.com', '1989-02-09','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (4, 'Tu', 'Solo tu', 'se.feliz@gmail.com', '2019-09-14','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (5, 'Victor', 'Reyes', 'sir.rotvico@gmail.com', '1989-02-09','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (6, 'Tu', 'Solo tu', 'se.feliz@gmail.com', '2019-09-14','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (7, 'Victor', 'Reyes', 'sir.rotvico@gmail.com', '1989-02-09','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (8, 'Tu', 'Solo tu', 'se.feliz@gmail.com', '2019-09-14','');

-- tabla productos

INSERT INTO productos (nombre, precio, create_at) VALUES ('Panasonic Pantalla LCD', 2350.00, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Sony Camara Digital', 1350.00, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Apple iPod Shuffle', 50.00, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Sony Notebook Z110', 350.00, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Hewlett Pacard Multifuncional', 1500.00, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Bianchi Bicicleta Aro', 999.99, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Mica Comoda 5 Cajones', 1799.99, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Dell Laptop Notebook', 899.99, NOW());

-- factura ejemplo

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('Factura Equipos de oficina', 'nueva', 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1,1,1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (2,1,4);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1,1,5);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1,1,7);

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('Factura bicicleta', 'bici', 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (3,2,6);