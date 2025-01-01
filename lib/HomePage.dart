

import 'package:animal_app/animal_images.dart';
import 'package:animal_app/buttonAnimal.dart';
import 'package:animal_app/icon_paths.dart';
import 'package:animal_app/images_paths.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'animal_name.dart';
import 'audio_paths.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    String image = imagesPaths.zoo;
    AudioPlayer audioPlayer =AudioPlayer();
    
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
       
      appBar: AppBar(
        elevation: 20,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: const Icon(Icons.menu),
        actions:  [
          Padding(padding: const EdgeInsets.all(8),
          child: Image(image:  AssetImage(AnimalIcon.animalIcon_1)),
         
          ),
          
        ],
         title: Text('animal app',style: GoogleFonts.piedra(color: Colors.black)
         )
         ,
         centerTitle: true,
      ),

      body:Column(
        children: [ 
           Expanded(
          flex: 1,
          child: AnimalImages(imagePath:image),
          ),
          
          Row(
          children: [
              
           ButtonAnimals(
              name: AnimalName.animal_1, 
              icon: AnimalIcon.icon_1,
              color: Colors.brown,
              onClick:() {
              buttonAction(imagesPath: imagesPaths.bird, audioPth: AnimalAudio.audio_1);
              },
              
              ),
          
           ButtonAnimals(
              name: AnimalName.animal_2, 
              icon: AnimalIcon.icon_2,
              color: Colors.brown,
              onClick:() {
              buttonAction(imagesPath: imagesPaths.cat, audioPth: AnimalAudio.audio_2);
              },
              ),
          
           ButtonAnimals(
              name: AnimalName.animal_3, 
              icon: AnimalIcon.icon_3,
              color: Colors.brown,
              onClick:() {
              buttonAction(imagesPath: imagesPaths.crocodile, audioPth: AnimalAudio.audio_3);
              },),
          
            ],
          ),
          
           Row(
          children: [
              
           ButtonAnimals(
              name: AnimalName.animal_4, 
              icon: AnimalIcon.icon_4,
              color: Colors.brown,
              onClick:() {
              buttonAction(imagesPath: imagesPaths.deer, audioPth: AnimalAudio.audio_4);
              },),
          
           ButtonAnimals(
              name: AnimalName.animal_5, 
              icon: AnimalIcon.icon_5,
              color: Colors.brown,
              onClick:() {
              buttonAction(imagesPath: imagesPaths.dog, audioPth: AnimalAudio.audio_5);
              },),
          
           ButtonAnimals(
              name: AnimalName.animal_6, 
              icon: AnimalIcon.icon_6,
              color: Colors.brown,
              onClick:() {
              buttonAction(imagesPath: imagesPaths.frog, audioPth: AnimalAudio.audio_6);
              },),
          
            ],
          ),
          
           Row(
          children: [
              
           ButtonAnimals(
              name: AnimalName.animal_7, 
              icon: AnimalIcon.icon_7,
              color: Colors.brown,
              onClick:() {
              buttonAction(imagesPath: imagesPaths.goose, audioPth: AnimalAudio.audio_7);
              },),
          
           ButtonAnimals(
              name: AnimalName.animal_8, 
              icon: AnimalIcon.icon_8,
              color: Colors.brown,
              onClick:() {
             buttonAction(imagesPath: imagesPaths.lion, audioPth: AnimalAudio.audio_8);
              },),
          
           ButtonAnimals(
              name: AnimalName.animal_9, 
              icon: AnimalIcon.icon_9,color: Colors.brown,
              onClick:() {
             buttonAction(imagesPath: imagesPaths.monkey, audioPth: AnimalAudio.audio_9);
              },),
          
            ],
          ),
          
           Row(
          children: [
              
           ButtonAnimals(
              name: AnimalName.animal_10, 
              icon: AnimalIcon.icon_10,color: Colors.brown,
              onClick:() {
             buttonAction(imagesPath: imagesPaths.parrot , audioPth: AnimalAudio.audio_10);
              },),
             
          
           ButtonAnimals(
              name: AnimalName.animal_11, 
              icon: AnimalIcon.icon_11,color: Colors.brown,
              onClick:() {
              buttonAction(imagesPath: imagesPaths.rooster, audioPth: AnimalAudio.audio_11);
              },),
          
           ButtonAnimals(
              name: AnimalName.animal_12, 
              icon: AnimalIcon.icon_12,color: Colors.brown,
              onClick:() {
              buttonAction(imagesPath: imagesPaths.snake, audioPth: AnimalAudio.audio_12);
              },),
          
            ],
          )

       ],
        
      )
      );
  }


Future<void> buttonAction ({required String imagesPath ,required String audioPth})  async {
  audioPlayer.stop();
  AssetSource source = AssetSource(audioPth);
  await audioPlayer.play(source);
  setState(() {
    image = imagesPath;
    
  });
}

  
}