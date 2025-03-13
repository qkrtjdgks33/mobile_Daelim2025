void main() {

  try {
    throw Exception('Error');
    print('Try');
  }
  catch(e){
    print('Catch');
  }
  finally{
    print('Finally');
  }

  /*final list = ['a','b','c','d','e'];

  for (var i = 0; i <list.length; i++) {
    print('hello world! $i');
  }

  list.forEach((i) {
    print('Hello World! $i ');
  });

  List.generate(list.length, (i) {
    final itim= list[i];
    print('hello world! $itim');
  });*/
}

