import 'slimdart.dart';

class SlimdartRequestSink extends RequestSink {
	  SlimdartRequestSink(Map<String, dynamic> options) : super(options);

	    @override
	      void setupRouter(Router router) {
		          router
				        .route("/exercises/[:index(\\d+)]")
					      .generate(() => new ExerciseController());
			    }
}


