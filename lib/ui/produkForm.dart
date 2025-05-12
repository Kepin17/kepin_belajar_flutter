import 'package:first_app_king/ui/detailProduct.dart';
import 'package:flutter/material.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({super.key});

  @override
  State<ProductForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProductForm> {
  final TextEditingController _noBarcodeController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _hargaController = TextEditingController();
  final TextEditingController _deskripsiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toko Kepin'),
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 235, 6, 2),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 20,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://plus.unsplash.com/premium_vector-1736496723401-20c108f54e89?q=80&w=2128&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          ),
                        ),
                      ),
                    ),

                    const Text(
                      'Form Product',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 235, 6, 2),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),

            const TextField(
              controller: _noBarcodeController,
              decoration: InputDecoration(
                labelText: 'No. Barcode',
                hintText: 'Masukkan id produk',

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Nama Produk',
                hintText: 'Masukkan nama produk',

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Harga Produk',
                hintText: 'Masukkan harga produk',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Deskripsi Produk',
                hintText: 'Masukkan deskripsi produk',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  String noBarcode = _noBarcodeController.text;
                  String nama = _namaController.text;
                  double? harga = double.tryParse(_hargaController.text);
                  String deskripsi = _deskripsiController.text;

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => Detailproduct(
                            noBarcode: noBarcode,
                            nama: nama,
                            harga: harga,
                            deskripsi: deskripsi,
                          ),
                    ),
                  );
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 235, 6, 2),
                  foregroundColor: Colors.white,
                  fixedSize: const Size(500, 25),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Simpan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
