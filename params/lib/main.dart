import 'package:flutter/material.dart';

class Product{
  final String title;
  final String description;
  Product(this.title,this.description);
}

void main(){
  runApp(MaterialApp(
    title: '导航的数据传递与接收',
    home: ProductList(
      products:List.generate(
        20, (i)=>Product('商品 $i','这是一个商品详情,编号 $i'))
    ),
  ));
}

class ProductList extends StatelessWidget {
  
  final List<Product> products;
  ProductList({Key key,@required this.products}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(products[index].title),
            subtitle: Text(products[index].description),
            leading: new Icon(Icons.account_box,color:Colors.lightGreen),
            onTap: (){
              _toProductDetail(context,products[index]);
            },
          );
        },
      ),
    );
  }
  _toProductDetail(BuildContext context,product) async{
    
    final result = await Navigator.push(context, MaterialPageRoute(
      builder: (context)=> ProductDetail(product:product)
    ));

    Scaffold.of(context).showSnackBar(SnackBar(
      content:Text(result)
    ));
  }
}


class ProductDetail extends StatelessWidget {
  final Product product;
  ProductDetail({Key key,@required this.product}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('product ${product.title}'),
      ),
      body: Column(
        children: <Widget>[
          Text('${product.description}'),
          RaisedButton(
            child: Text('回到上一页,并将参数传回'),
            onPressed: (){
              Navigator.pop(context,'传回来的商品是 ${product.title}');
            },
          )
        ],
        // child: Text('${product.description}'),
      ),
    );
  }
}