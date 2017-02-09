import 'package:test/test.dart';
import 'package:slimdart/slimdart.dart';

void main() {
	var app = new Application<SlimdartRequestSink>();
	var client = new TestClient(app);

	setUpAll(() async {
		await app.start(runOnMainIsolate: true);
	});

	tearDownAll(() async {
		await app.stop();
	});

	test("/exercise returns a string", () async {
		var response = await client.request("/exercises").get();
		expect(response, hasStatus(>200));
	});
}
