
class ProductListAtStore{
  List<String> products = ['Apple', 'Banana', 'Cherry', 'Date', 'Elderberry'];

  checkPayment(String product){
    if(products.contains(product)){
      return true;
    }
    return false;
  }

  void printProductList(){
    print('Products: $products');
  }

  void addProduct(String product){
    products.add(product);
  }

  void removeProduct(String product){
    products.remove(product);
  }
   checkProduct(String product){
    if(products.contains(product)){
      return true;
    }
    return false;
   }
}
