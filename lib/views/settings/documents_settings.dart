import 'package:flutter/material.dart';

class documents_settings extends StatelessWidget {
  const documents_settings({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Update Documents',
            style: TextStyle(
              color: Colors.black,
            ), // Couleur du titre
          ),
          backgroundColor: Colors
              .deepOrangeAccent,
          // Couleur transparente pour un aspect sans bordure
          elevation: 20.00,
          // Supprimer l'ombre de l'appBar
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
    SizedBox(
      width: 1000,
      height: 2000,
      child: Padding(
      padding: const EdgeInsets.all(0.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
          Card(
            shadowColor: Colors.white60,
            child: TextFormField(
            autovalidateMode:AutovalidateMode.always,
              validator:(value){
                if(value!.isEmpty){
                return "champs invalide";
                }
                if (value.length>10){
                return"le champs n'est pas etre sup 10";
                }},
                onSaved:(val){},
            decoration: InputDecoration(
              hintText: 'Bank Name',
              icon: Icon(Icons.food_bank_rounded),
            ),

            onTap:(){
            }),





              ),
            SizedBox(height: 10,),
            Card(
              shadowColor: Colors.white60,
              child: TextFormField(
                autovalidateMode:AutovalidateMode.always,
                onSaved:(val){},
                decoration: InputDecoration(
                  hintText: 'Bank Code',
                  icon: Icon(Icons.format_list_numbered_sharp),
                ),
                onTap:(){

                },),


            ),
            SizedBox(height: 10,),
            Card(
              shadowColor: Colors.white60,
              child: TextFormField(
                autovalidateMode:AutovalidateMode.always,
                onSaved:(val){},
                decoration: InputDecoration(
                  hintText: 'Bank Account',
                  icon: Icon(Icons.format_list_numbered_sharp),
                ),
                onTap:(){

                },),


            ),

          ]
        ),))


          )])));
  }}