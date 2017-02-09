import '../slimdart.dart';

class ExerciseController extends HTTPController {
  var exercise = "pushupppp";

  @httpGet getExercise() async {
    return new Response.ok(exercise);
  }

}


