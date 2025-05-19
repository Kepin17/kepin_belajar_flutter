import 'package:flutter/material.dart';

class Detailproduct extends StatefulWidget {
  final String? noBarcode;
  final String? nama;
  final double? harga;
  final int? stokBarang;
  final String? pabrik;

  const Detailproduct({
    super.key,
    this.noBarcode,
    this.nama,
    this.harga,
    this.stokBarang,
    this.pabrik,
  });

  @override
  State<Detailproduct> createState() => _DetailproductState();
}

class _DetailproductState extends State<Detailproduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Produk")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Barcode: ${widget.noBarcode}"),
            Text("Nama: ${widget.nama}"),
            Text("Harga: ${widget.harga}"),
            Text("Stok Barang: ${widget.stokBarang}"),
            Text("Pabrik: ${widget.pabrik}"),
          ],
        ),
      ),
    );
  }
}
