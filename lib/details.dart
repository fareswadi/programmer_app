import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: GoogleFonts.tajawal().fontFamily),
      child: Scaffold(
        appBar: AppBar(
          title: Text('تفاصيل الدورة'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent.shade700,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [imageintro(), infopage(),detailsgeneral(),],
          ),
        ),
      ),
    );
  }

  imageintro() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: ExactAssetImage('images/teach.jpg'),
            fit: BoxFit.cover,
          )),
    );
  }

  infopage() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'احتراف فلاتر',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.blueAccent.shade700,
                ),
              ),
              Text(
                '250 دولار',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.blueAccent.shade700,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'اسم صاحب الدورة',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueAccent.shade400,
                ),
              ),
              Text(
                'فارس نصر وادي',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'البلد',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueAccent.shade400,
                ),
              ),
              Text(
                'فلسطين',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'المدينة أو العنوان',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueAccent.shade400,
                ),
              ),
              Text(
                'غزة-جباليا',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'أونلاين أو حضور',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueAccent.shade400,
                ),
              ),
              Text(
                'أونلاين',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  detailsgeneral() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Text('تفاصيل الدورة',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w800),),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(' التفاصيل على الخاص   التفاصيل على الخاص'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(' التفاصيل على الخاص   التفاصيل على الخاص'),
              ),

            ],
          ),
        ),
      ),
        Center(child: RaisedButton(onPressed: (){},color:Colors.blueAccent.shade700,child: Text('التسجيل',style: TextStyle(fontSize: 20,color: Colors.white),),))
      ],
    );
  }
}
