import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';


enum Filter {
  all,
  active,
  completed,
}

Uuid uuid = Uuid();

class Todo extends Equatable {
  final String id;
  final String desc;
  final bool completed;

  Todo({
  String? id, //nullable 타입으로 바꿈
  required this.desc,
  this.completed = false, //투두 아이템을 생성하게 되면 기본적으로 completed 가 아니게 된다
  }) : this.id = id ?? uuid.v4(); //아이디를 외부에서 assign 하면 받아오고 아니면 새로 생성해준다

@override
  List<Object> get props => [id, desc, completed];

@override //출력시
  String toString() => 'Todo(id: $id, desc: $desc, completed: $completed)';

}