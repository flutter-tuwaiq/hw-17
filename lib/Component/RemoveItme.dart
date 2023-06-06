class CartScreen extends StatefulWidget {
  final List<String> cartItems; // يمكن استخدام نموذج بيانات (data model) أو مصفوفة لتمثيل العناصر المضافة إلى السلة

  CartScreen({this.cartItems});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void _removeCartItem(int index) {
    setState(() {
      widget.cartItems.removeAt(index); // يتم إزالة العنصر المحدد من السلة
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: widget.cartItems.isEmpty
          ? Center(
              child: Text('Your cart is empty'),
            )
          : ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: UniqueKey(),
                  background: Container(color: Colors.red),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    _removeCartItem(index); 
                  },
                  child: ListTile(
                    leading: Image.network(
                        'https://via.placeholder.com/150x150.png')
                    title: Text(widget.cartItems[index]),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        _removeCartItem(index); / 
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}
