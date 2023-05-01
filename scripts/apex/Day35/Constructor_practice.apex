Order.taxRate = 0.3;
Order o1 = new Order('Coffee', 'Duaa', 3.99);
o1.printOrder();




Order.showTaxRate();

Order.taxRate = 0.4;
o1.printOrder();