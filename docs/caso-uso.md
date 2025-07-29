juan compra una coca cola
juan compra dos doritos

lucia compra un chocolate
lucia compra una coca cola

futurizable y mantenible

abstraer eventos, normalización
relaciones entre las entidades evitan duplicidad, redundancia

CLIENTS:

1. Juan
2. Lucia

PRODUCTS:

1. doritos
2. coca cola
3. chocolate

BILLS:
juan pago por 1 coca y 2 doritos

el cliente 1 pago por 1 producto 2 y 2 productos 1

1. [client: 1] date 2025-01-25
2. [client:2] date 2025-01-26
BILL_ITEMS:

1. [bill:1] [product:1] quantity: 1
2. [bill:1] [product:2] quantity: 2
3. [bill:2] [product:2] quantity: 1
4. [bill:2] [product:3] quantity: 1

1:1

1:n

n:m
