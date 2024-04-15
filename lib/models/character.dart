import 'package:flutter_rpg/models/skill.dart';
import 'package:flutter_rpg/models/stats.dart';
import 'package:flutter_rpg/models/vocation.dart';

class Character with Stats  {

  // constructor
  Character({
    required this.name,
    required this.slogan,
    required this.vocation,
    required this.id,
    });

  // fields
  final Set<Skill> skills = {};
  final Vocation vocation;
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

  // getters
  bool get isFav => _isFav;

  // methods
  void toggleIsFav(){
    _isFav = !_isFav;
  }

  void uopdateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }

}


// dummy character data

List<Character> characters = [
  Character(id: '1', name: 'Klara', vocation: Vocation.wizard, slogan: 'I am the best!'),
  Character(id: '2', name: 'John', vocation: Vocation.junkie, slogan: 'Let me sleep!'),
  Character(id: '3', name: 'Marry', vocation: Vocation.raider, slogan: 'I am the rubbish!'),
  Character(id: '4', name: 'Karl', vocation: Vocation.ninja, slogan: 'I will get this job done!'),

];