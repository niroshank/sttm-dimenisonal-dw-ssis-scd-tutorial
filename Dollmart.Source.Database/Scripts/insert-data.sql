
--Insert product master data -- 5 categories
INSERT INTO [dbo].[ProductCategory] 
			([Description]) 
	VALUES 
			('Action Figures'), 
			('Arts and Crafts'), 
			('Dolls'), 
			('Educational'), 
			('Games & Puzzles') 
GO

-- 11 types
INSERT INTO [dbo].[ProductType] 
			([Description]
			,[CategoryId]) 
	VALUES 
			('Playsets and Accessories',1), 
			('Role Play',1),
			('Markers Paints and Pencils',2), 
			('Reusable Compounds',2), 
			('Display Dolls and Accessories',3), 
			('Dollhouses',3), 
			('Fashion and Styling',3), 
			('Electronic Learning Systems',4), 
			('Science',4), 
			('Brainteasers',5), 
			('Cards',5) 
GO

-- Insert product transactions
INSERT INTO [dbo].[Product]
           ([Description]
           ,[ProductTypeId]
           ,[UnitOfMeasurement]
           ,[QuantityOnHand])
     VALUES
           ('Frozen Fever',1,'10 pcs',100),
		   ('Gorilla Playsets',1,'1 pcs',100),
		   ('Avengers Iron Man',2,'1 pcs',100),
		   ('Magicfly fillable Paint Brush', 3, '12 pcs', 50),
		   ('Water Coloring Brush Pens', 3, '10 pcs', 50),
		   ('Cra-Z-Art Modeling Clay', 4, '1 pcs', 100),
		   ('Non-Dry Modeling Clay', 4, '20 pcs', 100),
		   ('Doll Stand Display', 5, '5 pcs', 10),
		   ('KidKraft Super Model Dollhouse', 6, '3 pcs', 50),
		   ('KidKraft Chelsea Doll Cottage', 6, '16 pcs', 50),
		   ('Blinger Diamond Collection', 7, '10 pcs', 200),
		   ('Hair Brush Comb', 7, '1 pcs', 200),
		   ('Product TitleLeapFrog LeapStart', 8, '1 pcs', 15),
		   ('Robot Science Stem Kit', 9, '1 pcs', 100),
		   ('Math Electronic Flash Card', 9, '1 pcs', 0),
		   ('Metal Wire Puzzles', 10, '10 pcs', 25),
		   ('Metal Puzzle Wooden Kong Ming', 10, '1 pcs', 0),
		   ('Brybelly Playing Cards', 11, '1 pcs', 10)
GO

--insert segmentation based on customer gender
INSERT INTO [dbo].[CustomerSegment]
           ([SegmentName])
     VALUES
           ('Male'),
		   ('Female')
GO

-- insert query for associated customers
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('James Butt', 1, '6649 N Blue Gum St', 'LA', 'New Orleans', 'United States');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Josephine Darakjy', 2, '4 B Blue Ridge Blvd', 'MI', 'Brighton', 'United States');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Lenna Paprocki', 2, '639 Main St', 'AK', 'Anchorage', 'United States');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Donette Foller', 1, '34 Center St', 'OH', 'Hamilton', 'United States');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Simona Morasca', 1, '3 Mcauley Dr', 'MA', 'Ashland', 'United States');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Leota Dilliard', 2, '7 W Jackson Blvd', 'CA', 'San Jose', 'United States');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Francoise Rautenstrauch', 2, '2335 Canton Hwy #6', 'ON', 'Windsor', 'Canada');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Kendra Loud', 2, '6 Arch St #9757', 'NB', 'Alcida', 'Canada');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Lourdes Bauswell', 2, '9547 Belmont Rd #21', 'ON', 'Belleville', 'Canada');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Hannah Edmison', 2, '73 Pittsford Victor Rd', 'BC', 'Vancouver', 'Canada');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Josefa Opitz', 2, '136 W Grand Ave #3', 'ON', 'Delhi', 'Canada');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Elvera Benimadho', 2, '99385 Charity St #840', 'CA', 'San Jose', 'United States');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Carma Vanheusen', 2, '68556 Central Hwy', 'CA', 'San Leandro', 'United States');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Malinda Hochard', 1, '55 Riverside Ave', 'IN', 'Indianapolis', 'United States');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Natalie Fern', 2, '7140 University Ave', 'WY', 'Rock Springs', 'United States');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Arlene Klusman', 2, '3 Secor Rd', 'LA', 'New Orleans', 'United States');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Alease Buemi', 2, '4 Webbs Chapel Rd', 'CO', 'Boulder', 'United States');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Angella Cetta', 2, '85 Blackstone Bldge', 'HI', 'Honolulu', 'United States');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Cyndy Goldammer', 2, '170 Wyoming Ave', 'MN', 'Burnsville', 'United States');
INSERT INTO [dbo].[Customer]([CustomerName],[SegmentId],[Address],[State],[City],[Country]) VALUES ('Celeste Korando', 1, '7 W Pinhook Rd', 'NY', 'Lynbrook', 'United States');


-- insert order list
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-06-20',11);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-06-21',17);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-07-10',3);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-07-11',14);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-07-12',13);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-07-13',18);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-08-01',5);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-08-02',6);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-08-03',10);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-08-04',1);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-08-05',9);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-08-05',10);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-08-05',7);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-09-10',12);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-09-11',13);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-09-12',5);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-11-01',15);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-11-01',16);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-11-01',17);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-11-01',2);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-11-02',19);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-11-03',20);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-11-04',2);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-11-05',11);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-11-06',12);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-11-07',10);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-11-08',8);
INSERT INTO [dbo].[OrderHeader] ([Date],[CustomerId])VALUES('2019-11-09',11);

--- insert items
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (1,1,5,1100.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (1,10,2,2200.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (2,3,7,1500.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (2,2,1,600.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (3,11,1,700.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (4,12,20,800.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (5,13,1,100.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (6,14,1,1200.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (7,16,1,500.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (8,4,1,400.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (9,5,1,200.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (10,9,6,1100.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (11,2,2,2200.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (12,11,3,700.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (13,8,3,600.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (13,12,2,800.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (14,12,4,800.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (14,13,1,100.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (15,5,1,200.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (16,6,2,500.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (17,7,1,400.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (18,8,1,600.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (19,9,1,1100.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (20,10,1,2200.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (21,11,10,700.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (22,12,1,800.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (23,13,1,100.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (24,13,2,800.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (24,14,1,1200.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (25,14,2,1200.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (26,8,2,600.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (27,7,2,400.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (27,6,2,200.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (28,1,2,1100.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (28,2,2,2200.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (29,3,2,1500.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (29,7,2,600.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (29,8,2,600.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (30,16,1,500.00);
INSERT INTO [dbo].[OrderDetail] ([OrderId],[ProductId],[Quantity],[UnitPrice]) VALUES (30,11,10,700.00);
